CMD:croom(playerid, params[], help)
{
	new Mapid,Mode,Maxplayers,Lock,Password[32];
	if(sscanf(params, "iiiis[32]",Mapid,Mode,Maxplayers,Lock,Password))return SCM(playerid,-1,"错误");
	if(Lock==1)CreateGameRoom(Account[playerid][_Key],Mapid,Mode,Maxplayers,true,Password);
    else CreateGameRoom(Account[playerid][_Key],Mapid,Mode,Maxplayers,false,Password);
	return 1;
}
stock ReturnConvertSec(Seconds)
{
    new rMin,rSec;
	rMin			=	Seconds 	/ 	60;
	Seconds	-=	rMin			*	60;
	rSec			=	Seconds;
	new Body[32];
	format(Body,sizeof(Body),"%02d:%02d",rMin,rSec);
	return Body;
}

N::OnGameRoundMapChange(GameID)
{
	new Mapid=random(sizeof(Map));
	while(Mapid==GameRoom[GameID][_MapID])Mapid=random(sizeof(Map));
	printf("%i",Mapid);
	GameRoom[GameID][_MapID]=Mapid;
	OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
	DestoryGameRoomMap(GameID);
	LoadGameRoomMapFromFile(GameID);
    foreach(new i:Player)
	{
	    if(Account[i][_Login]==true)
	    {
	        if(PlayerGameRoom[i][_GameID]==GameID)
			{
			    if(PlayerGameRoom[i][_State]==STATE_PLAYING||PlayerGameRoom[i][_State]==STATE_DEATH_SPEC)
	            {
	                //SetHealthBarVisibleEx(i, false);
	                DelPlayerInGameRoomTag(i,GameID);
					SetPlayerInGameRoom(i,GameID,true);
				}
			}
		}
	}
	return 1;
}
N::OnGameRoundTimeChange(GameID)
{
    foreach(new i:Player)
	{
	    if(Account[i][_Login]==true)
	    {
	        if(PlayerGameRoom[i][_GameID]==GameID)
	        {
	            if(PlayerGameRoom[i][_State]==STATE_PLAYING||PlayerGameRoom[i][_State]==STATE_DEATH_SPEC)
	            {
		            switch(PlayerGameRoom[i][_Team])
		            {
		                case TEAM_COP:
		                {
		                    SetPlayerPos(i,Map[GameRoom[GameID][_MapID]][_Cop_SpawnX],Map[GameRoom[GameID][_MapID]][_Cop_SpawnY],Map[GameRoom[GameID][_MapID]][_Cop_SpawnZ]);
		    			}
		                case TEAM_TER:
		                {
							SetPlayerPos(i,Map[GameRoom[GameID][_MapID]][_Ter_SpawnX],Map[GameRoom[GameID][_MapID]][_Ter_SpawnY],Map[GameRoom[GameID][_MapID]][_Ter_SpawnZ]);
		                }
		            }
			        SetCameraBehindPlayer(i);
			        TogglePlayerControllable(i, 0);
			        GameFreezePlayer(i,GameRoom[GameID][_MaxFreezeTime]);
			        PlayerGameRoom[i][_State]=STATE_PLAYING;
			        SetPlayerHealth(i,100.0);
			        SetPlayerArmour(i,0.0);
		        }
	        }
		}
	}
	return 1;
}
N::GameFreezePlayer(playerid,Times)
{
	if(Times==0)TogglePlayerControllable(playerid, 1);
	else
	{
	    if(PlayerGameRoom[playerid][Timer:_FreezeTimer]!=NONE)KillTimer(PlayerGameRoom[playerid][Timer:_FreezeTimer]);
	    PlayerGameRoom[playerid][Timer:_FreezeTimer]=NONE;
     	SetTimerEx("UnFreezePlayer",Times,false,"i",playerid);
	}
	return 1;
}
N::UnFreezePlayer(playerid)
{
    TogglePlayerControllable(playerid, 1);
    PlayerGameRoom[playerid][Timer:_FreezeTimer]=NONE;
    return 1;
}
N::CreateGameRoom(PlayerKey[],Mapid,Mode,Maxplayers,bool:Lock,Password[])//创建游戏房间
{
    if(Iter_Count(GameRoom)<MAX_GAMEROOMS)
	{
		new i=Iter_Free(GameRoom);
		UUID(GameRoom[i][_GameKey],UUID_LEN);
	    GameRoom[i][_MapID]=Mapid;
	    format(GameRoom[i][_OwnerKey],37,PlayerKey);
	    GameRoom[i][_MaxPlayers]=Maxplayers;
	    GameRoom[i][_CurrentRoundTime]=0;
	    GameRoom[i][_CurrentRoundMap]=0;
	    GameRoom[i][_MaxRoundTime]=90;
	    GameRoom[i][_MaxRoundMap]=NONE;
	    GameRoom[i][_BuyGunTime]=0;
	    GameRoom[i][_MaxBuyGunTime]=15;
	    GameRoom[i][_C4Time]=0;
	    GameRoom[i][_MaxC4Time]=35;
	    GameRoom[i][_MaxFreezeTime]=0;
	    GameRoom[i][_StartMoney]=16000;
	    GameRoom[i][_TeamHit]=false;
	    GameRoom[i][_FallHit]=false;
	    GameRoom[i][_KickAfk]=false;
	    GameRoom[i][_Lock]=Lock;
	    format(GameRoom[i][_Password],32,Password);
	    Iter_Add(GameRoom,i);
	    CreateGameRoomTag(i);
	    LoadGameRoomMapFromFile(i);
		new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[i][_OwnerKey]);
		switch(OwnerID)
		{
		    case SYSTEM_OWNER:
	    	{

			}
			case SYSTEM_NULL:
			{

			}
			default:
			{

				SetPlayerInGameRoom(OwnerID,i,false);
			}
		}
	    OnRoomListChanged(true,i,GameRoom[i][_GameKey]);
	}
	return 1;
}
N::DestoryGameRoom(GameID)
{
	if(Iter_Contains(GameRoom,GameID))
	{
	    printf("房间[%s]关闭",GameRoom[GameID][_GameKey]);
	    DestoryGameRoomMap(GameID);
	    foreach(new i:Player)
		{
		    if(Account[i][_Login]==true)
		    {
		        if(PlayerGameRoom[i][_GameID]==GameID)
		        {
		            QuitPlayerFromGameRoom(i);
		        }
		    }
		}
		Iter_Remove(GameRoom,GameID);
	}
	OnRoomListChanged(true,GameID,GameRoom[GameID][_GameKey]);
	RestGameRoomTag(GameID,true);
	return 1;
}
N::SetPlayerInGameRoom(playerid,GameID,bool:ChangeMap)//把玩家放入游戏房间
{
    PlayerGameRoom[playerid][_GameID]=GameID;
    PlayerGameRoom[playerid][_Team]=TEAM_NULL;
    PlayerGameRoom[playerid][_State]=STATE_COMP_SELECT;
    PlayerGameRoom[playerid][_Money]=GameRoom[GameID][_StartMoney];
    PlayerGameRoom[playerid][_Score]=0;
    ResetPlayerMoney(playerid);
    GivePlayerMoney(playerid,PlayerGameRoom[playerid][_Money]);
    if(ChangeMap==false)
    {
		HidePlayerRoomBackGround(playerid);
	    RestPlayerRoomListDraws(playerid,true);
	    HidePlayerAccountPanel(playerid);
	    RestPlayerAccountPanelDraws(playerid,true);
	    HidePlayerLevelDraws(playerid);
	    RestPlayerLevelDraws(playerid,true);
	    ShowPlayerGameRoomTag(playerid,GameID);
	}
	else SelectTextDraw(playerid,0xFF8500FF);
	HidePlayerBuyGunMain(playerid);
    ShowPlayerGameRoomCampSelect(playerid);

    SetPlayerVirtualWorld(playerid,GameRoomWorld(GameID));
    SetPlayerPos(playerid,Map[GameRoom[GameID][_MapID]][_Cop_SpawnX],Map[GameRoom[GameID][_MapID]][_Cop_SpawnY],Map[GameRoom[GameID][_MapID]][_Cop_SpawnZ]-2.0);
	SetPlayerCameraPos(playerid,Map[GameRoom[GameID][_MapID]][_Cop_SpawnX],Map[GameRoom[GameID][_MapID]][_Cop_SpawnY],Map[GameRoom[GameID][_MapID]][_Cop_SpawnZ]+20.0);
	SetPlayerCameraLookAt(playerid,Map[GameRoom[GameID][_MapID]][_Cop_SpawnX],Map[GameRoom[GameID][_MapID]][_Cop_SpawnY],Map[GameRoom[GameID][_MapID]][_Cop_SpawnZ],CAMERA_CUT);
	return 1;
}
N::QuitPlayerFromGameRoom(playerid)//玩家离开游戏房间
{
    if(PlayerGameRoom[playerid][_GameID]!=NONE)
    {
        HidePlayerGameRoomTag(playerid,PlayerGameRoom[playerid][_GameID]);
        HidePlayerGameConfig(playerid);
        HidePlayerGameRoomCampSelect(playerid);
        HidePlayerBuyGunMain(playerid);
		TogglePlayerSpectating(playerid,1);
        TogglePlayerSpectating(playerid,0);
    }
	return 1;
}

N::RestPlayerGameRoomData(playerid,bool:Update)//初始化玩家游戏房间数据
{
	new GameID=PlayerGameRoom[playerid][_GameID];
    PlayerGameRoom[playerid][_GameID]=NONE;
    PlayerGameRoom[playerid][_Team]=TEAM_NULL;
    PlayerGameRoom[playerid][_State]=STATE_NULL;
    if(Update==true)
    {
        if(Iter_Contains(GameRoom,GameID))
        {
            new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[GameID][_OwnerKey]);
            switch(OwnerID)
			{
			    case SYSTEM_OWNER:OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
				case SYSTEM_NULL:
				{
		            if(GetPlayerAmountsInGameRoom(GameID)<1)
		            {
                        DestoryGameRoom(GameID);
		            }
		            else
		            {
		                if(isequal(GameRoom[GameID][_OwnerKey],Account[playerid][_Key],false))
		                {
		                    new RandomOwnerID=GetGameRoomRandomOwner(GameID);
		                    if(RandomOwnerID!=NONE)
							{
								format(GameRoom[GameID][_OwnerKey],37,Account[RandomOwnerID][_Key]);
								OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
							}
						}
		            }
				}
				default:
				{
		            if(GetPlayerAmountsInGameRoom(GameID)<1)
		            {
                        DestoryGameRoom(GameID);
		            }
		            else
		            {
		                if(isequal(GameRoom[GameID][_OwnerKey],Account[playerid][_Key],false))
		                {
		                    new RandomOwnerID=GetGameRoomRandomOwner(GameID);
		                    if(RandomOwnerID!=NONE)
		                    {
								format(GameRoom[GameID][_OwnerKey],37,Account[RandomOwnerID][_Key]);
								OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
							}
		                }
		            }
				}
			}
        }
    }
	return 1;
}
N::GetGameRoomRandomOwner(GameID)//获取游戏随机房主
{
	new RandomOwnerID=NONE;
	new RandomOwner[MAX_PLAYERS];
	new Iterator:RandomOwner<MAX_PLAYERS>;
    Iter_Clear(RandomOwner);
    foreach(new i:Player)
    {
        if(Account[i][_Login]==true)
        {
            if(PlayerGameRoom[i][_GameID]!=NONE)
            {
                if(PlayerGameRoom[i][_GameID]==GameID)
				{
				    if(PlayerGameRoom[i][_State]==STATE_PLAYING||PlayerGameRoom[i][_State]==STATE_DEATH_SPEC)
				    {
						new s=Iter_Free(RandomOwner);
						RandomOwner[s]=i;
						Iter_Add(RandomOwner,s);
					}
				}
            }
        }
    }
    RandomOwnerID=Iter_Random(RandomOwner);
    Iter_Clear(RandomOwner);
	return RandomOwnerID;
}
N::GetPlayerAmountsInGameRoom(GameID)//获取游戏房间玩家人数
{
	new Amounts=0;
    foreach(new i:Player)
    {
        if(Account[i][_Login]==true)
        {
            if(PlayerGameRoom[i][_GameID]!=NONE)
            {
                if(PlayerGameRoom[i][_GameID]==GameID)
				{
				    if(PlayerGameRoom[i][_State]==STATE_COMP_SELECT||PlayerGameRoom[i][_State]==STATE_PLAYING||PlayerGameRoom[i][_State]==STATE_DEATH_SPEC)
					{
						Amounts++;
					}
				}
            }
        }
    }
	return Amounts;
}
N::GetGameRoomOwnerPlayerID(PlayerKey[])//获取游戏房间房主ID 若SYSTEM_OWNER为系统创建 不存在返回SYSTEM_NULL
{
	new playerid=SYSTEM_OWNER;
    if(isequal(PlayerKey,"SYSTEM_OWNER",false))return playerid;
    foreach(new i:Player)
    {
        if(Account[i][_Login]==true)
        {
			if(isequal(Account[i][_Key],PlayerKey,false))return i;
		}
	}
	playerid=SYSTEM_NULL;
	return playerid;
}
