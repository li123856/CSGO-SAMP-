N::RestGameRoomTag(GameID,bool:Destory)
{
	if(Destory==true)
	{
		forex(i,MAX_GAMEROOMPLAYERS)
		{
		    if(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]);
            if(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]);
            if(GameRoomTeamTag[GameID][_Cop_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Cop_ID_ID][i]);
            if(GameRoomTeamTag[GameID][_Ter_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Ter_ID_ID][i]);
		}
    	if(GameRoomTeamTag[GameID][_LastTime]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_LastTime]);
    	if(GameRoomTeamTag[GameID][_Cop_Score]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Cop_Score]);
    	if(GameRoomTeamTag[GameID][_Ter_Score]!=Text:INVALID_TEXT_DRAW)TextDrawDestroy(GameRoomTeamTag[GameID][_Ter_Score]);
	}
	forex(i,MAX_GAMEROOMPLAYERS)
	{
	    GameRoomTeamTag[GameID][_Cop_ID][i]=NONE;
	    GameRoomTeamTag[GameID][_Ter_ID][i]=NONE;
	    GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]=Text:INVALID_TEXT_DRAW;
	    GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]=Text:INVALID_TEXT_DRAW;
	    GameRoomTeamTag[GameID][_Cop_ID_ID][i]=Text:INVALID_TEXT_DRAW;
	    GameRoomTeamTag[GameID][_Ter_ID_ID][i]=Text:INVALID_TEXT_DRAW;
	}
   	GameRoomTeamTag[GameID][_LastTime]=Text:INVALID_TEXT_DRAW;
   	GameRoomTeamTag[GameID][_Cop_Score]=Text:INVALID_TEXT_DRAW;
   	GameRoomTeamTag[GameID][_Ter_Score]=Text:INVALID_TEXT_DRAW;
	return 1;
}
stock Text:CreateGameRoomTeamAvatar(Float:Xpos,Float:Ypos,Model)
{
	new Text:TextDraw = TextDrawCreate(Xpos,Ypos,"Nowy_TextDraw");
	TextDrawFont(TextDraw, 5);
	TextDrawLetterSize(TextDraw, 0.600000, 2.000000);
	TextDrawTextSize(TextDraw, 20.000000, 20.000000);
	TextDrawSetOutline(TextDraw, 1);
	TextDrawSetShadow(TextDraw, 0);
	TextDrawAlignment(TextDraw, 1);
	TextDrawColor(TextDraw, -1);
	TextDrawBackgroundColor(TextDraw, 0);
	TextDrawBoxColor(TextDraw, 50);
	TextDrawUseBox(TextDraw, 1);
	TextDrawSetProportional(TextDraw, 1);
	TextDrawSetSelectable(TextDraw, 0);
	TextDrawSetPreviewModel(TextDraw, Model);
	TextDrawSetPreviewRot(TextDraw, 90.000000, 0.000000, 0.000000, 0.129997);
	TextDrawSetPreviewVehCol(TextDraw, 1, 1);
    return TextDraw;
}
stock Text:CreateGameRoomTeamID(Float:Xpos,Float:Ypos,Index[])
{
    new Text:TextDraw = TextDrawCreate(Xpos, Ypos, Index);
	TextDrawFont(TextDraw, 2);
	TextDrawLetterSize(TextDraw, 0.108332, 0.649999);
	TextDrawTextSize(TextDraw, 400.000000, 17.000000);
	TextDrawSetOutline(TextDraw, 0);
	TextDrawSetShadow(TextDraw, 0);
	TextDrawAlignment(TextDraw, 2);
	TextDrawColor(TextDraw, -1);
	TextDrawBackgroundColor(TextDraw, 255);
	TextDrawBoxColor(TextDraw, 50);
	TextDrawUseBox(TextDraw, 0);
	TextDrawSetProportional(TextDraw, 1);
	TextDrawSetSelectable(TextDraw, 0);
    return TextDraw;
}
stock Text:CreateGameRoomLastTime(Float:Xpos,Float:Ypos,Times[],Color)
{
	new Text:TextDraw = TextDrawCreate(Xpos, Ypos, Times);
	TextDrawFont(TextDraw, 2);
	TextDrawLetterSize(TextDraw, 0.291666, 1.700000);
	TextDrawTextSize(TextDraw, 400.000000, 17.000000);
	TextDrawSetOutline(TextDraw, 0);
	TextDrawSetShadow(TextDraw, 0);
	TextDrawAlignment(TextDraw, 2);
	TextDrawColor(TextDraw, Color);
	TextDrawBackgroundColor(TextDraw, 255);
	TextDrawBoxColor(TextDraw, 50);
	TextDrawUseBox(TextDraw, 0);
	TextDrawSetProportional(TextDraw, 1);
	TextDrawSetSelectable(TextDraw, 0);
    return TextDraw;
}
stock Text:CreateGameRoomLastScore(Float:Xpos,Float:Ypos,Score[],Color)
{
	new Text:TextDraw = TextDrawCreate(Xpos,Ypos, Score);
	TextDrawFont(TextDraw, 2);
	TextDrawLetterSize(TextDraw, 0.291666, 1.700000);
	TextDrawTextSize(TextDraw, 400.000000, 17.000000);
	TextDrawSetOutline(TextDraw, 0);
	TextDrawSetShadow(TextDraw, 0);
	TextDrawAlignment(TextDraw, 2);
	TextDrawColor(TextDraw, Color);
	TextDrawBackgroundColor(TextDraw, 255);
	TextDrawBoxColor(TextDraw, 50);
	TextDrawUseBox(TextDraw, 0);
	TextDrawSetProportional(TextDraw, 1);
	TextDrawSetSelectable(TextDraw, 0);
    return TextDraw;
}
N::CreateGameRoomTag(GameID)
{
    RestGameRoomTag(GameID,true);
    GameRoomTeamTag[GameID][_LastTime]=CreateGameRoomLastTime(320.000000, 2.000000,"00:00",0xFFFF80C8);
    GameRoomTeamTag[GameID][_Cop_Score]=CreateGameRoomLastScore(331.000000, 17.000000,"0",0x0000FFC8);
    GameRoomTeamTag[GameID][_Ter_Score]=CreateGameRoomLastScore(308.000000, 17.000000,"0",0xFF0000C8);
	forex(i,GameRoom[GameID][_MaxPlayers])
	{
	    GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]=CreateGameRoomTeamAvatar(346.000000+i*20.0,5.000000,-2093);
	    GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]=CreateGameRoomTeamAvatar(274.000000-i*20.0,5.000000,-2093);
	    new line[32];
        if(GameRoomTeamTag[GameID][_Cop_ID][i]!=NONE)format(line,sizeof(line),"ID%i",GameRoomTeamTag[GameID][_Cop_ID][i]);
		else format(line,sizeof(line)," ");
		GameRoomTeamTag[GameID][_Cop_ID_ID][i]=CreateGameRoomTeamID(356.000000+i*20.0,17.000000,line);
	    if(GameRoomTeamTag[GameID][_Ter_ID][i]!=NONE)format(line,sizeof(line),"ID%i",GameRoomTeamTag[GameID][_Ter_ID][i]);
	    else format(line,sizeof(line)," ");
	    GameRoomTeamTag[GameID][_Ter_ID_ID][i]=CreateGameRoomTeamID(284.000000-i*20.0,17.000000,line);
	}
	return 1;
}
N::UpdateGameRoomTagForGamePlayers(GameID,Text:TextID)
{
    foreach(new i:Player)
    {
        if(Account[i][_Login]==true)
        {
            if(PlayerGameRoom[i][_GameID]!=NONE)
            {
                if(PlayerGameRoom[i][_GameID]==GameID)
				{
				    TextDrawShowForPlayer(i,TextID);
				}
			}
		}
	}
	return 1;
}
N::DelPlayerInGameRoomTag(playerid,GameID)
{
	forex(i,GameRoom[GameID][_MaxPlayers])
	{
		if(GameRoomTeamTag[GameID][_Cop_ID][i]!=NONE)
	    {
	        if(GameRoomTeamTag[GameID][_Cop_ID][i]==playerid)
	        {
		   		GameRoomTeamTag[GameID][_Cop_ID][i]=NONE;
		   		if(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)
			   	{
				   TextDrawSetPreviewModel(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i],-2093);
                   UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]);
				}
				if(GameRoomTeamTag[GameID][_Cop_ID_ID][i]!=Text:INVALID_TEXT_DRAW)
                {
					new line[32];
			        format(line,sizeof(line),"");
			        TextDrawSetString(GameRoomTeamTag[GameID][_Cop_ID_ID][i],line);
			        UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Cop_ID_ID][i]);
				}
	        }
	    }
		if(GameRoomTeamTag[GameID][_Ter_ID][i]!=NONE)
	    {
	        if(GameRoomTeamTag[GameID][_Ter_ID][i]==playerid)
	        {
		   		GameRoomTeamTag[GameID][_Ter_ID][i]=NONE;
		   		if(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)
			   	{
				   TextDrawSetPreviewModel(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i],-2093);
                   UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]);
				}
				if(GameRoomTeamTag[GameID][_Ter_ID_ID][i]!=Text:INVALID_TEXT_DRAW)
                {
					new line[32];
			        format(line,sizeof(line)," ");
			        TextDrawSetString(GameRoomTeamTag[GameID][_Ter_ID_ID][i],line);
			        UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Ter_ID_ID][i]);
				}
	        }
	    }
    }
	return 1;
}
N::AddPlayerInGameRoomTag(playerid,GameID,Team)
{
	if(Team==TEAM_COP)
	{
		forex(i,GameRoom[GameID][_MaxPlayers])
		{
			if(GameRoomTeamTag[GameID][_Cop_ID][i]==NONE)
		    {
		   		GameRoomTeamTag[GameID][_Cop_ID][i]=playerid;
		   		if(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)
			   	{
				   TextDrawSetPreviewModel(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i],Skins[Account[playerid][_Skin@Avatar]][_Mod@Avatar]);
                   UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]);
				}
				if(GameRoomTeamTag[GameID][_Cop_ID_ID][i]!=Text:INVALID_TEXT_DRAW)
                {
					new line[32];
			        format(line,sizeof(line),"ID%i",GameRoomTeamTag[GameID][_Cop_ID][i]);
			        TextDrawSetString(GameRoomTeamTag[GameID][_Cop_ID_ID][i],line);
			        UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Cop_ID_ID][i]);
				}
				break;
		    }
		}
	}
	if(Team==TEAM_TER)
	{
		forex(i,GameRoom[GameID][_MaxPlayers])
		{
			if(GameRoomTeamTag[GameID][_Ter_ID][i]==NONE)
		    {
		   		GameRoomTeamTag[GameID][_Ter_ID][i]=playerid;
		   		if(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)
			   	{
				   TextDrawSetPreviewModel(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i],Skins[Account[playerid][_Skin@Avatar]][_Mod@Avatar]);
                   UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]);
				}
				if(GameRoomTeamTag[GameID][_Ter_ID_ID][i]!=Text:INVALID_TEXT_DRAW)
                {
					new line[32];
			        format(line,sizeof(line),"ID%i",GameRoomTeamTag[GameID][_Ter_ID][i]);
			        TextDrawSetString(GameRoomTeamTag[GameID][_Ter_ID_ID][i],line);
			        UpdateGameRoomTagForGamePlayers(GameID,GameRoomTeamTag[GameID][_Ter_ID_ID][i]);
				}
				break;
		    }
		}
	}

	return 1;
}
N::ShowPlayerGameRoomTag(playerid,GameID)
{
    ShowPlayerRoomTagDraw(playerid);
	TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_LastTime]);
	TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_Score]);
	TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_Score]);
	forex(i,GameRoom[GameID][_MaxPlayers])
	{
	    if(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]);
        if(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]);
        if(GameRoomTeamTag[GameID][_Cop_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_ID_ID][i]);
        if(GameRoomTeamTag[GameID][_Ter_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawShowForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_ID_ID][i]);
	}
	return 1;
}
N::HidePlayerGameRoomTag(playerid,GameID)
{
    HidePlayerRoomTagDraw(playerid);
    DelPlayerInGameRoomTag(playerid,GameID);
	TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_LastTime]);
	TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_Score]);
	TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_Score]);
	forex(i,GameRoom[GameID][_MaxPlayers])
	{
	    if(GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_ID_Avatar][i]);
        if(GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]!=Text:INVALID_TEXT_DRAW)TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_ID_Avatar][i]);
        if(GameRoomTeamTag[GameID][_Cop_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Cop_ID_ID][i]);
        if(GameRoomTeamTag[GameID][_Ter_ID_ID][i]!=Text:INVALID_TEXT_DRAW)TextDrawHideForPlayer(playerid,GameRoomTeamTag[GameID][_Ter_ID_ID][i]);
	}
	return 1;
}
N::ShowPlayerRoomTagDraw(playerid)
{
	forex(i,3)TextDrawShowForPlayer(playerid,GameRoomTagDraw[i]);
	return 1;
}
N::HidePlayerRoomTagDraw(playerid)
{
	forex(i,3)TextDrawHideForPlayer(playerid,GameRoomTagDraw[i]);
	return 1;
}
N::GameRoomTagDrawInt()
{
	GameRoomTagDraw[0] = TextDrawCreate(320.000000, 5.000000, "_");//Ê±¼ä±³¾°
	TextDrawFont(GameRoomTagDraw[0], 1);
	TextDrawLetterSize(GameRoomTagDraw[0], 0.600000, 1.200000);
	TextDrawTextSize(GameRoomTagDraw[0], 400.000000, 42.500000);
	TextDrawSetOutline(GameRoomTagDraw[0], 1);
	TextDrawSetShadow(GameRoomTagDraw[0], 0);
	TextDrawAlignment(GameRoomTagDraw[0], 2);
	TextDrawColor(GameRoomTagDraw[0], -1);
	TextDrawBackgroundColor(GameRoomTagDraw[0], 255);
	TextDrawBoxColor(GameRoomTagDraw[0], 50);
	TextDrawUseBox(GameRoomTagDraw[0], 1);
	TextDrawSetProportional(GameRoomTagDraw[0], 1);
	TextDrawSetSelectable(GameRoomTagDraw[0], 0);

	GameRoomTagDraw[1] = TextDrawCreate(308.000000, 20.000000, "_");//¾¯²ì»ý·Ö±³¾°
	TextDrawFont(GameRoomTagDraw[1], 1);
	TextDrawLetterSize(GameRoomTagDraw[1], 0.600000, 1.200000);
	TextDrawTextSize(GameRoomTagDraw[1], 400.000000, 19.500000);
	TextDrawSetOutline(GameRoomTagDraw[1], 1);
	TextDrawSetShadow(GameRoomTagDraw[1], 0);
	TextDrawAlignment(GameRoomTagDraw[1], 2);
	TextDrawColor(GameRoomTagDraw[1], -1);
	TextDrawBackgroundColor(GameRoomTagDraw[1], 255);
	TextDrawBoxColor(GameRoomTagDraw[1], 50);
	TextDrawUseBox(GameRoomTagDraw[1], 1);
	TextDrawSetProportional(GameRoomTagDraw[1], 1);
	TextDrawSetSelectable(GameRoomTagDraw[1], 0);

	GameRoomTagDraw[2] = TextDrawCreate(331.000000, 20.000000, "_");//·ËÍ½»ý·Ö±³¾°
	TextDrawFont(GameRoomTagDraw[2], 1);
	TextDrawLetterSize(GameRoomTagDraw[2], 0.600000, 1.200000);
	TextDrawTextSize(GameRoomTagDraw[2], 400.000000, 19.500000);
	TextDrawSetOutline(GameRoomTagDraw[2], 1);
	TextDrawSetShadow(GameRoomTagDraw[2], 0);
	TextDrawAlignment(GameRoomTagDraw[2], 2);
	TextDrawColor(GameRoomTagDraw[2], -1);
	TextDrawBackgroundColor(GameRoomTagDraw[2], 255);
	TextDrawBoxColor(GameRoomTagDraw[2], 50);
	TextDrawUseBox(GameRoomTagDraw[2], 1);
	TextDrawSetProportional(GameRoomTagDraw[2], 1);
	TextDrawSetSelectable(GameRoomTagDraw[2], 0);
	return 1;
}
