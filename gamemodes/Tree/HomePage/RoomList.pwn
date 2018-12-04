N::OnPlayerClickGameRoomListBg(playerid,index)
{
    if(PlayerGameRoom[playerid][_GameID]!=NONE)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#10]","你已经在房间内无法进入其他房间","了解","");
    new GameID=PlayerRoomPrevieBox[playerid][index];
    if(!Iter_Contains(GameRoom,GameID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该房间已失效,请重新选择","了解","");
	if(!isequal(PlayerRoomPrevieBoxKey[playerid][index],GameRoom[GameID][_GameKey],false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#6]","该房间数据验证失败,可能房间发生了变动,请重新点击再试","了解","");
    if(Hooks("GetPlayerAmountsInGameRoom","i",GameID)>=GameRoom[GameID][_MaxPlayers])return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#7]","该房间人数已满,请选择其他房间","了解","");
	new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[GameID][_OwnerKey]);
	new lines[128];
    if(GameRoom[GameID][_Lock]==true)
    {
		formatex64("游戏房间ID:%i",1000+GameID);
	    switch(OwnerID)
		{
		    case SYSTEM_OWNER:format(lines,sizeof(lines),"房主:系统\n地图:%s\n请输入该房间的密码",Map[GameRoom[GameID][_MapID]][_Name]);
			case SYSTEM_NULL:format(lines,sizeof(lines),"房主:变更中\n地图:%s\n请输入该房间的密码",Map[GameRoom[GameID][_MapID]][_Name]);
			default:format(lines,sizeof(lines),"房主:%s\n地图:%s\n请输入该房间的密码",Account[OwnerID][_Name],Map[GameRoom[GameID][_MapID]][_Name]);
		}
		Dialog@Show(playerid,_ENTER_GAMEROOM_PASSWORD,DIALOG_STYLE_INPUT,string64,lines,"确定","返回");
        formatex64("%i,%s",GameID,GameRoom[GameID][_GameKey]);
	    SetPVarString(playerid,"@_ENTER_GAMEROOM_PASSWORD",string64);
    }
    else
	{
	    formatex64("游戏房间ID:%i",1000+GameID);
	    switch(OwnerID)
		{
		    case SYSTEM_OWNER:format(lines,sizeof(lines),"房主:系统\n地图:%s\n是否进入该房间",Map[GameRoom[GameID][_MapID]][_Name]);
			case SYSTEM_NULL:format(lines,sizeof(lines),"房主:变更中\n地图:%s\n是否进入该房间",Map[GameRoom[GameID][_MapID]][_Name]);
			default:format(lines,sizeof(lines),"房主:%s\n地图:%s\n是否进入该房间",Account[OwnerID][_Name],Map[GameRoom[GameID][_MapID]][_Name]);
		}
		Dialog@Show(playerid,_ENTER_GAMEROOM,DIALOG_STYLE_MSGBOX,string64,lines,"进入","返回");
        formatex64("%i,%s",GameID,GameRoom[GameID][_GameKey]);
	    SetPVarString(playerid,"@_ENTER_GAMEROOM",string64);
	}
	return 1;
}
    // 字符是否为数字
stock bool:AnChNum(const ch_value)
{
	if('0' <= ch_value && '9' >= ch_value)return true;
	return false;
}
// 字符串是否都是数字
stock bool:AnStrNum(const str[])
{
	new index = -1;
    while(index++, str[index] != '\0')
	{
        if(!AnChNum(str[index]))return  false;
	}
 	return true;
}
//字符串中的数字数量
stock AnStrNumAmount(const str[])
{
	new index = -1;
	new amount = 0;
	while(index++, str[index] != '\0')
	{
	    if(AnChNum(str[index]))amount++;
	}
	return amount;
}
N::RestPlayerRoomListDraws(playerid,bool:destroy)//初始化玩家列表DRAWS
{
	forex(i,MAX_ROOM_BOX_ITEMS)
	{
	    PlayerRoomPrevieBox[playerid][i]=NONE;
	    format(PlayerRoomPrevieBoxKey[playerid][i],64,"");
	    PlayerRoomPrevieBoxDrawID[playerid][i]=NONE;
	}
	PlayerRoomPrevieCount[playerid]=NONE;
	PlayerRoomPreviePage[playerid]=NONE;
	PlayerRoomPrevieRate[playerid]=NONE;
	PlayerRoomClickID[playerid]=NONE;
	if(destroy==true)
	{
		forex(i,MAX_ROOM_SHOW_LIST)
		{
		    SetSVarString("PTDD","PlayerRoomListBg");
			if(PlayerRoomListBg[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListBg[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListNumber");
			if(PlayerRoomListNumber[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListNumber[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListMap");
			if(PlayerRoomListMap[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListMap[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListOwner");
			if(PlayerRoomListOwner[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListOwner[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListOwnerID");
			if(PlayerRoomListOwnerID[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListOwnerID[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListNP");
			if(PlayerRoomListNP[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListNP[playerid][i]);
            SetSVarString("PTDD","PlayerRoomListLock");
			if(PlayerRoomListLock[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListLock[playerid][i]);
		}
		SetSVarString("PTDD","PlayerRoomListSlider");
		if(PlayerRoomListSlider[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerRoomListSlider[playerid]);
	}
	forex(i,MAX_ROOM_SHOW_LIST)
	{
		PlayerRoomListBg[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListNumber[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListMap[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListOwner[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListOwnerID[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListNP[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerRoomListLock[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
	}
	PlayerRoomListSlider[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerRoomListShow[playerid]=false;
	return 1;
}

N::RoomBackGroundInt()
{
	RoomBackTextDraw[0] = TextDrawCreate(206.000000, 1.000000, "~n~");//roombg
	TextDrawFont(RoomBackTextDraw[0], 1);
	TextDrawLetterSize(RoomBackTextDraw[0], 0.600000, 38.049953);
	TextDrawTextSize(RoomBackTextDraw[0], 400.000000, 395.500000);
	TextDrawSetOutline(RoomBackTextDraw[0], 1);
	TextDrawSetShadow(RoomBackTextDraw[0], 0);
	TextDrawAlignment(RoomBackTextDraw[0], 2);
	TextDrawColor(RoomBackTextDraw[0], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[0], 255);
	TextDrawBoxColor(RoomBackTextDraw[0], 210);
	TextDrawUseBox(RoomBackTextDraw[0], 1);
	TextDrawSetProportional(RoomBackTextDraw[0], 1);
	TextDrawSetSelectable(RoomBackTextDraw[0], 0);

	RoomBackTextDraw[1] = TextDrawCreate(9.000000, 3.000000, "~n~");//tagtagbg
	TextDrawFont(RoomBackTextDraw[1], 1);
	TextDrawLetterSize(RoomBackTextDraw[1], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[1], 402.500000, 69.500000);
	TextDrawSetOutline(RoomBackTextDraw[1], 1);
	TextDrawSetShadow(RoomBackTextDraw[1], 0);
	TextDrawAlignment(RoomBackTextDraw[1], 1);
	TextDrawColor(RoomBackTextDraw[1], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[1], 255);
	TextDrawBoxColor(RoomBackTextDraw[1], -16777066);
	TextDrawUseBox(RoomBackTextDraw[1], 1);
	TextDrawSetProportional(RoomBackTextDraw[1], 1);
	TextDrawSetSelectable(RoomBackTextDraw[1], 0);

	RoomBackTextDraw[2] = TextDrawCreate(3.000000, -9.000000, "Nowy_TextDraw");//fangjianid
	TextDrawFont(RoomBackTextDraw[2], 5);
	TextDrawLetterSize(RoomBackTextDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[2], 49.500000, 62.500000);
	TextDrawSetOutline(RoomBackTextDraw[2], 1);
	TextDrawSetShadow(RoomBackTextDraw[2], 0);
	TextDrawAlignment(RoomBackTextDraw[2], 1);
	TextDrawColor(RoomBackTextDraw[2], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[2], 0);
	TextDrawBoxColor(RoomBackTextDraw[2], 0);
	TextDrawUseBox(RoomBackTextDraw[2], 1);
	TextDrawSetProportional(RoomBackTextDraw[2], 1);
	TextDrawSetSelectable(RoomBackTextDraw[2], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[2], -2001);
	TextDrawSetPreviewRot(RoomBackTextDraw[2], -96.000000, 0.000000, 181.000000, 1.769999);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[2], 1, 1);

	RoomBackTextDraw[3] = TextDrawCreate(92.000000, -18.000000, "Nowy_TextDraw");//ditu
	TextDrawFont(RoomBackTextDraw[3], 5);
	TextDrawLetterSize(RoomBackTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[3], 49.500000, 62.500000);
	TextDrawSetOutline(RoomBackTextDraw[3], 1);
	TextDrawSetShadow(RoomBackTextDraw[3], 0);
	TextDrawAlignment(RoomBackTextDraw[3], 1);
	TextDrawColor(RoomBackTextDraw[3], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[3], 0);
	TextDrawBoxColor(RoomBackTextDraw[3], 0);
	TextDrawUseBox(RoomBackTextDraw[3], 1);
	TextDrawSetProportional(RoomBackTextDraw[3], 1);
	TextDrawSetSelectable(RoomBackTextDraw[3], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[3], -2002);
	TextDrawSetPreviewRot(RoomBackTextDraw[3], -96.000000, 0.000000, 181.000000, 1.769999);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[3], 1, 1);

	RoomBackTextDraw[4] = TextDrawCreate(184.000000, -11.000000, "Nowy_TextDraw");//fangzhu
	TextDrawFont(RoomBackTextDraw[4], 5);
	TextDrawLetterSize(RoomBackTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[4], 49.500000, 62.500000);
	TextDrawSetOutline(RoomBackTextDraw[4], 1);
	TextDrawSetShadow(RoomBackTextDraw[4], 0);
	TextDrawAlignment(RoomBackTextDraw[4], 1);
	TextDrawColor(RoomBackTextDraw[4], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[4], 0);
	TextDrawBoxColor(RoomBackTextDraw[4], 0);
	TextDrawUseBox(RoomBackTextDraw[4], 1);
	TextDrawSetProportional(RoomBackTextDraw[4], 1);
	TextDrawSetSelectable(RoomBackTextDraw[4], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[4], -2003);
	TextDrawSetPreviewRot(RoomBackTextDraw[4], -96.000000, 0.000000, 181.000000, 1.769999);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[4], 1, 1);

	RoomBackTextDraw[5] = TextDrawCreate(273.000000, -12.000000, "Nowy_TextDraw");//renshu
	TextDrawFont(RoomBackTextDraw[5], 5);
	TextDrawLetterSize(RoomBackTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[5], 49.500000, 62.500000);
	TextDrawSetOutline(RoomBackTextDraw[5], 1);
	TextDrawSetShadow(RoomBackTextDraw[5], 0);
	TextDrawAlignment(RoomBackTextDraw[5], 1);
	TextDrawColor(RoomBackTextDraw[5], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[5], 0);
	TextDrawBoxColor(RoomBackTextDraw[5], 0);
	TextDrawUseBox(RoomBackTextDraw[5], 1);
	TextDrawSetProportional(RoomBackTextDraw[5], 1);
	TextDrawSetSelectable(RoomBackTextDraw[5], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[5], -2004);
	TextDrawSetPreviewRot(RoomBackTextDraw[5], -96.000000, 0.000000, 181.000000, 1.769999);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[5], 1, 1);
	
	RoomBackTextDraw[6] = TextDrawCreate(356.000000, 4.000000, "Nowy_TextDraw");//suo
	TextDrawFont(RoomBackTextDraw[6], 5);
	TextDrawLetterSize(RoomBackTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[6], 16.500000, 17.500000);
	TextDrawSetOutline(RoomBackTextDraw[6], 1);
	TextDrawSetShadow(RoomBackTextDraw[6], 0);
	TextDrawAlignment(RoomBackTextDraw[6], 1);
	TextDrawColor(RoomBackTextDraw[6], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[6], 0);
	TextDrawBoxColor(RoomBackTextDraw[6], 50);
	TextDrawUseBox(RoomBackTextDraw[6], 1);
	TextDrawSetProportional(RoomBackTextDraw[6], 1);
	TextDrawSetSelectable(RoomBackTextDraw[6], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[6], -2023);
	TextDrawSetPreviewRot(RoomBackTextDraw[6], -88.000000, 0.000000, -180.000000, 0.049998);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[6], 1, 1);

	RoomBackTextDraw[7] = TextDrawCreate(387.000000, 26.000000, "ld_beat:up");//uppage
	TextDrawFont(RoomBackTextDraw[7], 4);
	TextDrawLetterSize(RoomBackTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[7], 17.500000, 17.500000);
	TextDrawSetOutline(RoomBackTextDraw[7], 1);
	TextDrawSetShadow(RoomBackTextDraw[7], 0);
	TextDrawAlignment(RoomBackTextDraw[7], 1);
	TextDrawColor(RoomBackTextDraw[7], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[7], 255);
	TextDrawBoxColor(RoomBackTextDraw[7], 50);
	TextDrawUseBox(RoomBackTextDraw[7], 1);
	TextDrawSetProportional(RoomBackTextDraw[7], 1);
	TextDrawSetSelectable(RoomBackTextDraw[7], 1);

	RoomBackTextDraw[8] = TextDrawCreate(387.000000, 326.000000, "ld_beat:down");//downpage
	TextDrawFont(RoomBackTextDraw[8], 4);
	TextDrawLetterSize(RoomBackTextDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[8], 17.500000, 17.500000);
	TextDrawSetOutline(RoomBackTextDraw[8], 1);
	TextDrawSetShadow(RoomBackTextDraw[8], 0);
	TextDrawAlignment(RoomBackTextDraw[8], 1);
	TextDrawColor(RoomBackTextDraw[8], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[8], 255);
	TextDrawBoxColor(RoomBackTextDraw[8], 50);
	TextDrawUseBox(RoomBackTextDraw[8], 1);
	TextDrawSetProportional(RoomBackTextDraw[8], 1);
	TextDrawSetSelectable(RoomBackTextDraw[8], 1);
	
	RoomBackTextDraw[9] = TextDrawCreate(206.000000, 347.000000, "~n~");//列表按钮背景
	TextDrawFont(RoomBackTextDraw[9], 1);
	TextDrawLetterSize(RoomBackTextDraw[9], 0.600000, 2.449999);
	TextDrawTextSize(RoomBackTextDraw[9], 400.000000, 207.000000);
	TextDrawSetOutline(RoomBackTextDraw[9], 1);
	TextDrawSetShadow(RoomBackTextDraw[9], 0);
	TextDrawAlignment(RoomBackTextDraw[9], 2);
	TextDrawColor(RoomBackTextDraw[9], -16776961);
	TextDrawBackgroundColor(RoomBackTextDraw[9], 255);
	TextDrawBoxColor(RoomBackTextDraw[9], 150);
	TextDrawUseBox(RoomBackTextDraw[9], 1);
	TextDrawSetProportional(RoomBackTextDraw[9], 1);
	TextDrawSetSelectable(RoomBackTextDraw[9], 0);

	RoomBackTextDraw[10] = TextDrawCreate(104.000000, 347.000000, "ld_otb2:butnAo");//创建房间按钮
	TextDrawFont(RoomBackTextDraw[10], 4);
	TextDrawLetterSize(RoomBackTextDraw[10], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[10], 66.500000, 28.000000);
	TextDrawSetOutline(RoomBackTextDraw[10], 1);
	TextDrawSetShadow(RoomBackTextDraw[10], 0);
	TextDrawAlignment(RoomBackTextDraw[10], 1);
	TextDrawColor(RoomBackTextDraw[10], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[10], 255);
	TextDrawBoxColor(RoomBackTextDraw[10], 50);
	TextDrawUseBox(RoomBackTextDraw[10], 1);
	TextDrawSetProportional(RoomBackTextDraw[10], 1);
	TextDrawSetSelectable(RoomBackTextDraw[10], 1);
	
	RoomBackTextDraw[11] = TextDrawCreate(173.000000, 347.000000, "ld_otb2:butnAo");//自动匹配按钮
	TextDrawFont(RoomBackTextDraw[11], 4);
	TextDrawLetterSize(RoomBackTextDraw[11], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[11], 66.500000, 27.500000);
	TextDrawSetOutline(RoomBackTextDraw[11], 1);
	TextDrawSetShadow(RoomBackTextDraw[11], 0);
	TextDrawAlignment(RoomBackTextDraw[11], 1);
	TextDrawColor(RoomBackTextDraw[11], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[11], 255);
	TextDrawBoxColor(RoomBackTextDraw[11], 50);
	TextDrawUseBox(RoomBackTextDraw[11], 1);
	TextDrawSetProportional(RoomBackTextDraw[11], 1);
	TextDrawSetSelectable(RoomBackTextDraw[11], 1);

	RoomBackTextDraw[12] = TextDrawCreate(242.000000, 347.000000, "ld_otb2:butnAo");//房间ID按钮
	TextDrawFont(RoomBackTextDraw[12], 4);
	TextDrawLetterSize(RoomBackTextDraw[12], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[12], 66.500000, 28.000000);
	TextDrawSetOutline(RoomBackTextDraw[12], 1);
	TextDrawSetShadow(RoomBackTextDraw[12], 0);
	TextDrawAlignment(RoomBackTextDraw[12], 1);
	TextDrawColor(RoomBackTextDraw[12], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[12], 255);
	TextDrawBoxColor(RoomBackTextDraw[12], 50);
	TextDrawUseBox(RoomBackTextDraw[12], 1);
	TextDrawSetProportional(RoomBackTextDraw[12], 1);
	TextDrawSetSelectable(RoomBackTextDraw[12], 1);
	
	RoomBackTextDraw[13] = TextDrawCreate(108.000000, 334.000000, "Nowy_TextDraw");//创建房间文字
	TextDrawFont(RoomBackTextDraw[13], 5);
	TextDrawLetterSize(RoomBackTextDraw[13], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[13], 58.000000, 47.500000);
	TextDrawSetOutline(RoomBackTextDraw[13], 2);
	TextDrawSetShadow(RoomBackTextDraw[13], 0);
	TextDrawAlignment(RoomBackTextDraw[13], 1);
	TextDrawColor(RoomBackTextDraw[13], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[13], 0);
	TextDrawBoxColor(RoomBackTextDraw[13], 50);
	TextDrawUseBox(RoomBackTextDraw[13], 1);
	TextDrawSetProportional(RoomBackTextDraw[13], 1);
	TextDrawSetSelectable(RoomBackTextDraw[13], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[13], -2026);
	TextDrawSetPreviewRot(RoomBackTextDraw[13], -89.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[13], 1, 1);

	RoomBackTextDraw[14] = TextDrawCreate(178.000000, 334.000000, "Nowy_TextDraw");//自动匹配文字
	TextDrawFont(RoomBackTextDraw[14], 5);
	TextDrawLetterSize(RoomBackTextDraw[14], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[14], 58.000000, 47.500000);
	TextDrawSetOutline(RoomBackTextDraw[14], 2);
	TextDrawSetShadow(RoomBackTextDraw[14], 0);
	TextDrawAlignment(RoomBackTextDraw[14], 1);
	TextDrawColor(RoomBackTextDraw[14], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[14], 0);
	TextDrawBoxColor(RoomBackTextDraw[14], 50);
	TextDrawUseBox(RoomBackTextDraw[14], 1);
	TextDrawSetProportional(RoomBackTextDraw[14], 1);
	TextDrawSetSelectable(RoomBackTextDraw[14], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[14], -2028);
	TextDrawSetPreviewRot(RoomBackTextDraw[14], -89.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[14], 1, 1);
	
	RoomBackTextDraw[15] = TextDrawCreate(246.000000, 334.000000, "Nowy_TextDraw");//房间ID文字
	TextDrawFont(RoomBackTextDraw[15], 5);
	TextDrawLetterSize(RoomBackTextDraw[15], 0.600000, 2.000000);
	TextDrawTextSize(RoomBackTextDraw[15], 58.000000, 47.500000);
	TextDrawSetOutline(RoomBackTextDraw[15], 2);
	TextDrawSetShadow(RoomBackTextDraw[15], 0);
	TextDrawAlignment(RoomBackTextDraw[15], 1);
	TextDrawColor(RoomBackTextDraw[15], -1);
	TextDrawBackgroundColor(RoomBackTextDraw[15], 0);
	TextDrawBoxColor(RoomBackTextDraw[15], 50);
	TextDrawUseBox(RoomBackTextDraw[15], 1);
	TextDrawSetProportional(RoomBackTextDraw[15], 1);
	TextDrawSetSelectable(RoomBackTextDraw[15], 0);
	TextDrawSetPreviewModel(RoomBackTextDraw[15], -2027);
	TextDrawSetPreviewRot(RoomBackTextDraw[15], -89.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(RoomBackTextDraw[15], 1, 1);
	return 1;
}
N::ShowPlayerRoomBackGround(playerid)
{
	forex(i,MAX_ROOMBACKTEXTDRAWS)TextDrawShowForPlayer(playerid,RoomBackTextDraw[i]);
	return 1;
}
N::HidePlayerRoomBackGround(playerid)
{
	forex(i,MAX_ROOMBACKTEXTDRAWS)TextDrawHideForPlayer(playerid,RoomBackTextDraw[i]);
	return 1;
}

stock PlayerText:CreatePlayerRoomListBg(playerid,Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerRoomListBg");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 379.500000, 79.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1378294122);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerRoomListNumber(playerid,Float:Xpos, Float:Ypos,body[])
{
    SetSVarString("CPTD","CreatePlayerRoomListNumber");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, body);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.474999, 2.449999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 1);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -16776961);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, -1523963137);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerRoomListMap(playerid,Float:Xpos, Float:Ypos,model)
{
    SetSVarString("CPTD","CreatePlayerRoomListMap");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 83.000000, 77.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -91.000000, -1.000000, 180.000000, 0.140000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerRoomListOwner(playerid,Float:Xpos, Float:Ypos,model)
{
    SetSVarString("CPTD","CreatePlayerRoomListOwner");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 55.500000, 55.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -91.000000, -1.000000, 180.000000, 0.140000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerListOwnerID(playerid,Float:Xpos, Float:Ypos,body[])
{
    SetSVarString("CPTD","CreatePlayerListOwnerID");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, body);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.345833, 1.799998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1061109505);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerRoomListNP(playerid,Float:Xpos, Float:Ypos,body[])
{
    SetSVarString("CPTD","CreatePlayerRoomListNP");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, body);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.474999, 2.449999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, -1523963137);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerRoomListLock(playerid,Float:Xpos, Float:Ypos,model)
{
    SetSVarString("CPTD","CreatePlayerRoomListLock");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 23.000000, 25.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -2.000000, 0.000000, 0.000000, 0.209998);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::GetGameRoomAmounts()return Iter_Count(GameRoom);
stock PlayerText:CreatePlayerRoomListSlider(playerid,pages)
{
    new RoomAmounts=GetGameRoomAmounts();
    if(RoomAmounts<=0)RoomAmounts=1;
    new Float:BarTextSize=floatdiv(278.5,floatround(floatdiv(RoomAmounts,MAX_ROOM_SHOW_LIST),floatround_ceil));
	if(pages<=0)pages=0;
	else pages--;
	SetSVarString("CPTD","CreatePlayerRoomListSlider");
 	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, 389.000000, 45.000000+floatmul(pages,BarTextSize), "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 14.500000, BarTextSize);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -86);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::RefreshPlayerRoomPage(playerid,pages)return CreatePlayerRoomPage(playerid,pages);

N::CreatePlayerRoomPage(playerid,pages)
{
    RestPlayerRoomListDraws(playerid,true);
	new index=0,RoomAmout=0;
    PlayerRoomPrevieRate[playerid]=0;
    PlayerRoomPrevieCount[playerid]=1;
    PlayerRoomClickID[playerid]=NONE;

/**************************************************************/
 	#define TOPLINE MAX_GAMEROOMS
	new	Project_ID[TOPLINE],Top_Info[TOPLINE],Current_TopLine=Iter_Count(GameRoom);
    foreach(new i:GameRoom)
    {
        HighestTopList(i,GetPlayerAmountsInGameRoom(i), Project_ID, Top_Info, Current_TopLine);
    }
    forex(i,Current_TopLine)
	{
	    if(RoomAmout<MAX_ROOM_BOX_ITEMS-2)
	    {
			PlayerRoomPrevieBox[playerid][PlayerRoomPrevieCount[playerid]]=Project_ID[i];
			format(PlayerRoomPrevieBoxKey[playerid][PlayerRoomPrevieCount[playerid]],64,"");
			format(PlayerRoomPrevieBoxKey[playerid][PlayerRoomPrevieCount[playerid]],64,GameRoom[Project_ID[i]][_GameKey]);
   			PlayerRoomPrevieCount[playerid]++;
   			RoomAmout++;
	    }
	}
/**************************************************************/
/*	for(new i=Iter_End(GameRoom);(i=Iter_Prev(GameRoom,i))!=Iter_Begin(GameRoom);)
	{
	    if(RoomAmout<MAX_ROOM_BOX_ITEMS-2)
	    {
			PlayerRoomPrevieBox[playerid][PlayerRoomPrevieCount[playerid]]=i;
			format(PlayerRoomPrevieBoxKey[playerid][PlayerRoomPrevieCount[playerid]],64,"");
			format(PlayerRoomPrevieBoxKey[playerid][PlayerRoomPrevieCount[playerid]],64,GameRoom[i][_GameKey]);
   			PlayerRoomPrevieCount[playerid]++;
   			RoomAmout++;
	    }
	}*/
	if(pages<1)pages=1;
	if(pages>floatround((PlayerRoomPrevieCount[playerid]-1)/float(MAX_ROOM_SHOW_LIST),floatround_ceil))pages=floatround((PlayerRoomPrevieCount[playerid]-1)/float(MAX_ROOM_SHOW_LIST),floatround_ceil);
    PlayerRoomPreviePage[playerid]=pages;
    pages=(pages-1)*MAX_ROOM_SHOW_LIST;
    if(pages<=0)pages=1;else pages++;
    new Float:Diff_Y,LockModel;
	loop(i,pages,pages+MAX_ROOM_SHOW_LIST)
	{
	    index=PlayerRoomPrevieBox[playerid][i];
	    if(i<PlayerRoomPrevieCount[playerid])
		{
		    Diff_Y=PlayerRoomPrevieRate[playerid]*80;
            PlayerRoomListBg[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListBg(playerid, 8.000000, 24.000000+Diff_Y);
            formatex32("%i",1000+index);
            PlayerRoomListNumber[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListNumber(playerid,32.000000, 54.000000+Diff_Y,string32);
			PlayerRoomListMap[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListMap(playerid,77.000000, 25.000000+Diff_Y,Map[GameRoom[index][_MapID]][_Mod@Avatar]);
			new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[index][_OwnerKey]);
			switch(OwnerID)
			{
			    case SYSTEM_OWNER:
			    {
					PlayerRoomListOwner[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListOwner(playerid,184.000000, 30.000000+Diff_Y,Skins[0][_Mod@Avatar]);
            		formatex32("~b~SYSTEM");
					PlayerRoomListOwnerID[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerListOwnerID(playerid,212.000000, 83.000000+Diff_Y,string32);
			    }
			    case SYSTEM_NULL:
			    {
					PlayerRoomListOwner[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListOwner(playerid,184.000000, 30.000000+Diff_Y,Skins[0][_Mod@Avatar]);
            		formatex32("~r~CHANGEING");
					PlayerRoomListOwnerID[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerListOwnerID(playerid,212.000000, 83.000000+Diff_Y,string32);
			    }
				default:
				{
					PlayerRoomListOwner[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListOwner(playerid,184.000000, 30.000000+Diff_Y,Skins[Account[OwnerID][_Skin@Avatar]][_Mod@Avatar]);
            		formatex32("~w~ID:%i",OwnerID);
					PlayerRoomListOwnerID[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerListOwnerID(playerid,212.000000, 83.000000+Diff_Y,string32);
				}
			}
			formatex32("%i/%i",GetPlayerAmountsInGameRoom(index),GameRoom[index][_MaxPlayers]);
			PlayerRoomListNP[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListNP(playerid,295.000000, 52.000000+Diff_Y,string32);
			if(GameRoom[index][_Lock]==true)LockModel=-2024;
			else LockModel=-2025;
			PlayerRoomListLock[playerid][PlayerRoomPrevieRate[playerid]] = CreatePlayerRoomListLock(playerid,352.000000, 50.000000+Diff_Y,LockModel);
			PlayerRoomPrevieBoxDrawID[playerid][i]=PlayerRoomPrevieRate[playerid];
			PlayerRoomPrevieRate[playerid]++;
		}
		if(i>=PlayerRoomPrevieCount[playerid])break;
	}
  	PlayerRoomListSlider[playerid]=CreatePlayerRoomListSlider(playerid,PlayerRoomPreviePage[playerid]);
  	PlayerRoomListShow[playerid]=true;
	return 1;
}
N::GetPlayerHaveRoomPrevieBoxID(playerid,index)
{
	forex(i,MAX_ROOM_BOX_ITEMS)
	{
		if(PlayerRoomPrevieBox[playerid][i]!=NONE&&PlayerRoomPrevieBox[playerid][i]==index)
		{
		    return i;
		}
	}
	return NONE;
}

N::OnRoomListChanged(bool:change,index,key[])//房间列表变动
{
    if(Iter_Contains(GameRoom,index))
    {
		foreach(new i:Player)
		{
		    if(PlayerRoomListShow[i]==true)
		    {
				if(change==false)
				{
					new boxid=GetPlayerHaveRoomPrevieBoxID(i,index);
			        if(boxid!=NONE)
			        {
			            printf("%s 1",Account[i][_Name]);
					    if(isequal(PlayerRoomPrevieBoxKey[i][boxid],key,false))
						{
						    new DrawID=PlayerRoomPrevieBoxDrawID[i][boxid];
						    if(DrawID!=NONE)
						    {
						        printf("%s 2",Account[i][_Name]);
								if(PlayerRoomListMap[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
									PlayerTextDrawSetPreviewModel(i,PlayerRoomListMap[i][DrawID],Map[GameRoom[index][_MapID]][_Mod@Avatar]);
									PlayerTextDrawShow(i,PlayerRoomListMap[i][DrawID]);
								}
								if(PlayerRoomListOwner[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
								    new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[index][_OwnerKey]);
									switch(OwnerID)
									{
									    case SYSTEM_OWNER:
									    {
											PlayerTextDrawSetPreviewModel(i,PlayerRoomListOwner[i][DrawID],Skins[0][_Mod@Avatar]);
									    }
									    case SYSTEM_NULL:
									    {
											PlayerTextDrawSetPreviewModel(i,PlayerRoomListOwner[i][DrawID],Skins[0][_Mod@Avatar]);
									    }
										default:
										{
											PlayerTextDrawSetPreviewModel(i,PlayerRoomListOwner[i][DrawID],Skins[Account[OwnerID][_Skin@Avatar]][_Mod@Avatar]);
										}
									}
                                 	PlayerTextDrawShow(i,PlayerRoomListOwner[i][DrawID]);
								}
								if(PlayerRoomListOwnerID[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
								    new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[index][_OwnerKey]);
									switch(OwnerID)
									{
									    case SYSTEM_OWNER:
									    {
											formatex32("~b~SYSTEM");
											PlayerTextDrawSetString(i,PlayerRoomListOwnerID[i][DrawID],string32);
									    }
									    case SYSTEM_NULL:
									    {
											formatex32("~r~CHANGEING");
											PlayerTextDrawSetString(i,PlayerRoomListOwnerID[i][DrawID],string32);
									    }
										default:
										{
											formatex32("~w~ID:%i",OwnerID);
											PlayerTextDrawSetString(i,PlayerRoomListOwnerID[i][DrawID],string32);
										}
									}
								    PlayerTextDrawShow(i,PlayerRoomListOwnerID[i][DrawID]);
								}
								if(PlayerRoomListNP[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
								    formatex32("%i/%i",GetPlayerAmountsInGameRoom(index),GameRoom[index][_MaxPlayers]);
								    PlayerTextDrawSetString(i,PlayerRoomListNP[i][DrawID],string32);
								    PlayerTextDrawShow(i,PlayerRoomListNP[i][DrawID]);
								}
								if(PlayerRoomListLock[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
								    new LockModel;
									if(GameRoom[index][_Lock]==true)LockModel=-2024;
									else LockModel=-2025;
									PlayerTextDrawSetPreviewModel(i,PlayerRoomListLock[i][DrawID],LockModel);
                                    PlayerTextDrawShow(i,PlayerRoomListLock[i][DrawID]);
								}
								if(PlayerRoomListMap[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
								{
									PlayerTextDrawSetPreviewModel(i,PlayerRoomListMap[i][DrawID],Map[GameRoom[index][_MapID]][_Mod@Avatar]);
                                    PlayerTextDrawShow(i,PlayerRoomListMap[i][DrawID]);
								}
							}
			            }
			        }
		        }
		        else RefreshPlayerRoomPage(i,PlayerRoomPreviePage[i]);
	        }
		}
	}
	else
	{
		foreach(new i:Player)
		{
		    if(PlayerRoomListShow[i]==true)
		    {
		        if(change==true)RefreshPlayerRoomPage(i,PlayerRoomPreviePage[i]);
	        }
		}
	}
	return 1;
}
/*****************************创建房间*********************************/
stock PlayerText:CreatePlayerCRMIcon(playerid,Float:Xpos, Float:Ypos,Model)//地图预览
{
    SetSVarString("CPTD","CreatePlayerCRMIcon");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 100.000000, 100.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 0.000000, 0.000000, 0.000000, 0.189998);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerCRMText(playerid,Float:Xpos, Float:Ypos,Model)//地图文字
{
    SetSVarString("CPTD","CreatePlayerCRMText");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 100.000000, 100.000000);
	PlayerTextDrawSetOutline(playerid,PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 90.000000, 180.000000, 0.000000, 0.230000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerCRMLock(playerid,Float:Xpos, Float:Ypos,Model)//锁
{
    SetSVarString("CPTD","CreatePlayerCRMLock");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 30.000000, 30.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 0.000000, 0.000000, 0.000000, 0.229999);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerCRMMode(playerid,Float:Xpos, Float:Ypos,Model)//地图模式
{
	SetSVarString("CPTD","CreatePlayerCRMMode");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 104.000000, 104.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1378294017);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 90.000000, -180.000000, 0.000000, 0.239998);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerCRMPassword(playerid,Float:Xpos, Float:Ypos,body[])//地图密码
{
	SetSVarString("CPTD","CreatePlayerCRMPassword");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, body);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.516666, 2.699999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid,PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -741092353);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerCRMMP(playerid,Float:Xpos, Float:Ypos,body[])//最大人数
{
	SetSVarString("CPTD","CreatePlayerCRMMP");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, body);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.533333, 2.349998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 571.500000, 15.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 0xFFFFFFC8);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::CreatePlayerCreateRoom(playerid)
{
    RestPlayerCreateRoomDraws(playerid,true);
    ShowPlayerCreateRoom(playerid);
	PlayerCreateRoomMapIcon[playerid]= CreatePlayerCRMIcon(playerid,474.000000, 65.000000,Map[PlayerCreateRoomMap[playerid]][_Mod@Avatar]);//地图预览
	PlayerCreateRoomMapText[playerid]= CreatePlayerCRMText(playerid,504.000000, 135.000000,Map[PlayerCreateRoomMap[playerid]][_Mod@Name]);//地图文字
    formatex32("%i",GameMaxPlayer[PlayerCreateRoomMaxPlayers[playerid]][_Amount]);
    PlayerCreateRoomMapMaxPlayers[playerid]= CreatePlayerCRMMP(playerid,543.000000, 231.000000,string32);//最大人数
    PlayerCreateRoomMapMode[playerid]= CreatePlayerCRMMode(playerid,502.000000, 160.000000,GameMode[PlayerCreateRoomMap[playerid]][_Mod@Name]);//模式
	if(PlayerCreateRoomLock[playerid]==true)
	{
	    PlayerCreateRoomMapLock[playerid]= CreatePlayerCRMLock(playerid,542.000000, 253.000000,-2024);
		PlayerCreateRoomMapPassWord[playerid]= CreatePlayerCRMPassword(playerid,555.000000, 284.000000,"~r~UNSET");
	}
	else
	{
	    PlayerCreateRoomMapLock[playerid]= CreatePlayerCRMLock(playerid,542.000000, 253.000000,-2025);
		PlayerCreateRoomMapPassWord[playerid]= CreatePlayerCRMPassword(playerid,555.000000, 284.000000,"_");
	}
	PlayerCreateRoomShow[playerid]=true;
	return 1;
}
N::RestPlayerCreateRoomDraws(playerid,bool:destroy)//初始化玩家列表DRAWS
{
	PlayerCreateRoomMap[playerid]=0;
	PlayerCreateRoomMode[playerid]=0;
	PlayerCreateRoomMaxPlayers[playerid]=0;
	PlayerCreateRoomLock[playerid]=false;
	format(PlayerCreateRoomPassWord[playerid],16," ");
	if(destroy==true)
	{
		if(PlayerCreateRoomMapIcon[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapIcon[playerid]);
		if(PlayerCreateRoomMapText[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapText[playerid]);
		if(PlayerCreateRoomMapMode[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapMode[playerid]);
		if(PlayerCreateRoomMapLock[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapLock[playerid]);
		if(PlayerCreateRoomMapPassWord[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapPassWord[playerid]);
        if(PlayerCreateRoomMapMaxPlayers[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerCreateRoomMapMaxPlayers[playerid]);
	}
	PlayerCreateRoomMapIcon[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomMapText[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomMapMode[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomMapLock[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomMapPassWord[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomMapMaxPlayers[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerCreateRoomShow[playerid]=false;
	return 1;
}
N::CreateRoomBackGroundInt()
{
	CreateRoomBackTextDraw[0] = TextDrawCreate(525.000000, 24.000000, "_");//背景
	TextDrawFont(CreateRoomBackTextDraw[0], 1);
	TextDrawLetterSize(CreateRoomBackTextDraw[0], 0.304165, 38.350040);
	TextDrawTextSize(CreateRoomBackTextDraw[0], 400.000000, 203.500000);
	TextDrawSetOutline(CreateRoomBackTextDraw[0], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[0], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[0], 2);
	TextDrawColor(CreateRoomBackTextDraw[0], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[0], 255);
	TextDrawBoxColor(CreateRoomBackTextDraw[0], 150);
	TextDrawUseBox(CreateRoomBackTextDraw[0], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[0], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[0], 0);

	CreateRoomBackTextDraw[1] = TextDrawCreate(525.000000, 24.000000, "_");//标题背景
	TextDrawFont(CreateRoomBackTextDraw[1], 0);
	TextDrawLetterSize(CreateRoomBackTextDraw[1], 0.600000, 3.800008);
	TextDrawTextSize(CreateRoomBackTextDraw[1], 400.000000, 203.500000);
	TextDrawSetOutline(CreateRoomBackTextDraw[1], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[1], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[1], 2);
	TextDrawColor(CreateRoomBackTextDraw[1], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[1], 255);
	TextDrawBoxColor(CreateRoomBackTextDraw[1], 1714657791);
	TextDrawUseBox(CreateRoomBackTextDraw[1], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[1], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[1], 0);
	
	CreateRoomBackTextDraw[2] = TextDrawCreate(473.000000, -8.000000, "Nowy_TextDraw");//创建房间文字
	TextDrawFont(CreateRoomBackTextDraw[2], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[2], 100.000000, 100.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[2], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[2], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[2], 1);
	TextDrawColor(CreateRoomBackTextDraw[2], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[2], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[2], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[2], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[2], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[2], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[2], -2084);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[2], 90.000000, -180.000000, 0.000000, 0.209998);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[2], 1, 1);
	
	CreateRoomBackTextDraw[3] = TextDrawCreate(448.000000, 147.000000, "Nowy_TextDraw");//地图文字
	TextDrawFont(CreateRoomBackTextDraw[3], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[3], 80.000000, 80.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[3], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[3], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[3], 1);
	TextDrawColor(CreateRoomBackTextDraw[3], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[3], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[3], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[3], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[3], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[3], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[3], -2085);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[3], 90.000000, -180.000000, 0.000000, 0.209998);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[3], 1, 1);
	
	CreateRoomBackTextDraw[4] = TextDrawCreate(447.000000, 256.000000, "Nowy_TextDraw");//密码文字
	TextDrawFont(CreateRoomBackTextDraw[4], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[4], 80.000000, 80.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[4], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[4], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[4], 1);
	TextDrawColor(CreateRoomBackTextDraw[4], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[4], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[4], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[4], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[4], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[4], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[4], -2087);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[4], 90.000000, -180.000000, 0.000000, 0.209998);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[4], 1, 1);
	
	CreateRoomBackTextDraw[5] = TextDrawCreate(447.000000, 104.000000, "ld_beat:left");//左箭头
	TextDrawFont(CreateRoomBackTextDraw[5], 4);
	TextDrawLetterSize(CreateRoomBackTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[5], 21.000000, 24.500000);
	TextDrawSetOutline(CreateRoomBackTextDraw[5], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[5], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[5], 1);
	TextDrawColor(CreateRoomBackTextDraw[5], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[5], 255);
	TextDrawBoxColor(CreateRoomBackTextDraw[5], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[5], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[5], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[5], 1);
	
	CreateRoomBackTextDraw[6] = TextDrawCreate(581.000000, 104.000000, "ld_beat:right");//右箭头
	TextDrawFont(CreateRoomBackTextDraw[6], 4);
	TextDrawLetterSize(CreateRoomBackTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[6], 21.000000, 24.500000);
	TextDrawSetOutline(CreateRoomBackTextDraw[6], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[6], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[6], 1);
	TextDrawColor(CreateRoomBackTextDraw[6], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[6], 255);
	TextDrawBoxColor(CreateRoomBackTextDraw[6], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[6], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[6], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[6], 1);
	
	CreateRoomBackTextDraw[7] = TextDrawCreate(438.000000, 229.000000, "Nowy_TextDraw");//房间锁文字
	TextDrawFont(CreateRoomBackTextDraw[7], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[7], 80.000000, 80.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[7], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[7], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[7], 1);
	TextDrawColor(CreateRoomBackTextDraw[7], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[7], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[7], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[7], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[7], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[7], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[7], -2086);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[7], 90.000000, -180.000000, 0.000000, 0.209998);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[7], 1, 1);
	
	CreateRoomBackTextDraw[8] = TextDrawCreate(448.000000, 174.000000, "Nowy_TextDraw");//模式文字
	TextDrawFont(CreateRoomBackTextDraw[8], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[8], 80.000000, 80.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[8], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[8], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[8], 1);
	TextDrawColor(CreateRoomBackTextDraw[8], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[8], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[8], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[8], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[8], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[8], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[8], -2088);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[8], 90.000000, -180.000000, 0.000000, 0.209998);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[8], 1, 1);
	
	CreateRoomBackTextDraw[9] = TextDrawCreate(479.000000, 331.000000, "Nowy_TextDraw");//确定文字
	TextDrawFont(CreateRoomBackTextDraw[9], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[9], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[9], 40.000000, 40.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[9], 3);
	TextDrawSetShadow(CreateRoomBackTextDraw[9], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[9], 1);
	TextDrawColor(CreateRoomBackTextDraw[9], -168436481);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[9], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[9], 131);
	TextDrawUseBox(CreateRoomBackTextDraw[9], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[9], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[9], 1);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[9], -2090);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[9], 90.000000, -180.000000, 0.000000, 0.100000);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[9], 1, 1);

	CreateRoomBackTextDraw[10] = TextDrawCreate(542.000000, 331.000000, "Nowy_TextDraw");//取消文字
	TextDrawFont(CreateRoomBackTextDraw[10], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[10], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[10], 40.000000, 40.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[10], 3);
	TextDrawSetShadow(CreateRoomBackTextDraw[10], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[10], 1);
	TextDrawColor(CreateRoomBackTextDraw[10], -168436481);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[10], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[10], 131);
	TextDrawUseBox(CreateRoomBackTextDraw[10], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[10], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[10], 1);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[10], -2091);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[10], 90.000000, -180.000000, 0.000000, 0.100000);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[10], 1, 1);
	
	CreateRoomBackTextDraw[11] = TextDrawCreate(429.000000, 201.000000, "Nowy_TextDraw");
	TextDrawFont(CreateRoomBackTextDraw[11], 5);
	TextDrawLetterSize(CreateRoomBackTextDraw[11], 0.600000, 2.000000);
	TextDrawTextSize(CreateRoomBackTextDraw[11], 80.000000, 80.000000);
	TextDrawSetOutline(CreateRoomBackTextDraw[11], 1);
	TextDrawSetShadow(CreateRoomBackTextDraw[11], 0);
	TextDrawAlignment(CreateRoomBackTextDraw[11], 1);
	TextDrawColor(CreateRoomBackTextDraw[11], -1);
	TextDrawBackgroundColor(CreateRoomBackTextDraw[11], 0);
	TextDrawBoxColor(CreateRoomBackTextDraw[11], 50);
	TextDrawUseBox(CreateRoomBackTextDraw[11], 1);
	TextDrawSetProportional(CreateRoomBackTextDraw[11], 1);
	TextDrawSetSelectable(CreateRoomBackTextDraw[11], 0);
	TextDrawSetPreviewModel(CreateRoomBackTextDraw[11], -2092);
	TextDrawSetPreviewRot(CreateRoomBackTextDraw[11], 90.000000, -180.000000, 0.000000, 0.209996);
	TextDrawSetPreviewVehCol(CreateRoomBackTextDraw[11], 1, 1);
	return 1;
}
N::ShowPlayerCreateRoom(playerid)
{
	forex(i,MAX_CREATEROOM_TEXTDRAWS)TextDrawShowForPlayer(playerid,CreateRoomBackTextDraw[i]);
	return 1;
}
N::HidePlayerCreateRoom(playerid)
{
	forex(i,MAX_CREATEROOM_TEXTDRAWS)TextDrawHideForPlayer(playerid,CreateRoomBackTextDraw[i]);
	return 1;
}
/************************************************************************/
N::GameRoom@DialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case _ENTER_GAMEROOM:
        {
        	if(response)
            {
            	if(PlayerGameRoom[playerid][_GameID]!=NONE)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#10]","你已经在房间内无法进入其他房间","了解","");
				new PVarString[64],GameID,GameKey[37];
            	GetPVarString(playerid,"@_ENTER_GAMEROOM",PVarString,64);
            	if(sscanf(PVarString, "p<,>is[37]",GameID,GameKey))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#8]","对话框数据验证失败,请重新选择","了解","");
                if(!Iter_Contains(GameRoom,GameID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该房间已失效,请重新选择","了解","");
				if(!isequal(GameRoom[GameID][_GameKey],GameKey,false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#6]","该房间数据验证失败,可能房间发生了变动,请重新点击再试","了解","");
				if(Hooks("GetPlayerAmountsInGameRoom","i",GameID)>=GameRoom[GameID][_MaxPlayers])return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#7]","该房间人数已满,请选择其他房间","了解","");
				new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[GameID][_OwnerKey]);
				switch(OwnerID)
				{
				    case SYSTEM_OWNER:
			    	{
                        SetPlayerInGameRoom(playerid,GameID,false);
					}
					case SYSTEM_NULL:
					{
                        SetPlayerInGameRoom(playerid,GameID,false);
                        format(GameRoom[GameID][_OwnerKey],37,Account[playerid][_Key]);
					}
					default:
					{
						SetPlayerInGameRoom(playerid,GameID,false);
					}
				}
				OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
            }
        }
        case _ENTER_GAMEROOM_PASSWORD:
        {
        	if(response)
            {
            	if(PlayerGameRoom[playerid][_GameID]!=NONE)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#10]","你已经在房间内无法进入其他房间","了解","");
				new PVarString[64],GameID,GameKey[37];
            	GetPVarString(playerid,"@_ENTER_GAMEROOM_PASSWORD",PVarString,64);
            	if(sscanf(PVarString, "p<,>is[37]",GameID,GameKey))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#8]","对话框数据验证失败,请重新选择","了解","");
                if(!Iter_Contains(GameRoom,GameID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该房间已失效,请重新选择","了解","");
				if(!isequal(GameRoom[GameID][_GameKey],GameKey,false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#6]","该房间数据验证失败,可能房间发生了变动,请重新点击再试","了解","");
				if(Hooks("GetPlayerAmountsInGameRoom","i",GameID)>=GameRoom[GameID][_MaxPlayers])return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#7]","该房间人数已满,请选择其他房间","了解","");
                if(strlen(inputtext)<1||strlen(inputtext)>128)
                {
  					formatex64("ID:%i 房间密码",1000+GameID);
					Dialog@Show(playerid,_ENTER_GAMEROOM_PASSWORD,DIALOG_STYLE_INPUT,string64,"输入的字符数量不正确\n请重新输入该房间的密码","确定","返回");
                    return 1;
                }
                if(!isequal(inputtext,GameRoom[GameID][_Password],false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#8]","密码错误","了解","");
				new OwnerID=GetGameRoomOwnerPlayerID(GameRoom[GameID][_OwnerKey]);
				switch(OwnerID)
				{
				    case SYSTEM_OWNER:
			    	{
                        SetPlayerInGameRoom(playerid,GameID,false);
					}
					case SYSTEM_NULL:
					{
                        SetPlayerInGameRoom(playerid,GameID,false);
                        format(GameRoom[GameID][_OwnerKey],37,Account[playerid][_Key]);
					}
					default:
					{
						SetPlayerInGameRoom(playerid,GameID,false);
					}
				}
				OnRoomListChanged(false,GameID,GameRoom[GameID][_GameKey]);
            }
        }
        case _CREATEROOM_PASSWORD:
        {
        	if(response)
            {
                if(PlayerCreateRoomShow[playerid]==true)
                {
	                if(!AnStrNum(inputtext))return Dialog@Show(playerid,_CREATEROOM_PASSWORD,DIALOG_STYLE_INPUT,"设置密码","密码只能为数字\n请输入要设置的房间密码\n只能数字","确定","取消");
	                if(AnStrNumAmount(inputtext)<1)return Dialog@Show(playerid,_CREATEROOM_PASSWORD,DIALOG_STYLE_INPUT,"设置密码","密码最少1位\n请输入要设置的房间密码\n只能数字","确定","取消");
	                if(AnStrNumAmount(inputtext)>6)return Dialog@Show(playerid,_CREATEROOM_PASSWORD,DIALOG_STYLE_INPUT,"设置密码","密码最多6位\n请输入要设置的房间密码\n只能数字","确定","取消");
	                format(PlayerCreateRoomPassWord[playerid],16,inputtext);
		            if(PlayerCreateRoomMapPassWord[playerid]!=PlayerText:INVALID_TEXT_DRAW)
		            {
		            	PlayerTextDrawSetString(playerid,PlayerCreateRoomMapPassWord[playerid],PlayerCreateRoomPassWord[playerid]);
		                PlayerTextDrawShow(playerid,PlayerCreateRoomMapPassWord[playerid]);
		            }
	            }
            }
        }
        case _CREATEROOM_MAXPLAYERS:
        {
        	if(response)
            {
                if(PlayerCreateRoomShow[playerid]==true)
                {
                    if(listitem!=PlayerCreateRoomMaxPlayers[playerid])
                    {
                        PlayerCreateRoomMaxPlayers[playerid]=listitem;
    					formatex32("%i",GameMaxPlayer[PlayerCreateRoomMaxPlayers[playerid]][_Amount]);
			            if(PlayerCreateRoomMapMaxPlayers[playerid]!=PlayerText:INVALID_TEXT_DRAW)
			            {
			            	PlayerTextDrawSetString(playerid,PlayerCreateRoomMapMaxPlayers[playerid],string32);
			                PlayerTextDrawShow(playerid,PlayerCreateRoomMapMaxPlayers[playerid]);
			            }
                    }
                }
            }
        }
    }
    return 1;
}
