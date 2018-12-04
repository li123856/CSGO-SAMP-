N::ErrorBoxTextDrawInt()
{
	ErrorBoxBackGround = TextDrawCreate(520.000000, 146.000000, "~n~");
	TextDrawFont(ErrorBoxBackGround, 1);
	TextDrawLetterSize(ErrorBoxBackGround, 0.600000, 10.099983);
	TextDrawTextSize(ErrorBoxBackGround, 400.000000, 214.000000);
	TextDrawSetOutline(ErrorBoxBackGround, 1);
	TextDrawSetShadow(ErrorBoxBackGround, 0);
	TextDrawAlignment(ErrorBoxBackGround, 2);
	TextDrawColor(ErrorBoxBackGround, -141);
	TextDrawBackgroundColor(ErrorBoxBackGround, 255);
	TextDrawBoxColor(ErrorBoxBackGround, 225);
	TextDrawUseBox(ErrorBoxBackGround, 1);
	TextDrawSetProportional(ErrorBoxBackGround, 1);
	TextDrawSetSelectable(ErrorBoxBackGround, 0);

	ErrorBoxTagBackGround = TextDrawCreate(520.000000, 146.000000, "~n~");
	TextDrawFont(ErrorBoxTagBackGround, 1);
	TextDrawLetterSize(ErrorBoxTagBackGround, 0.600000, 1.949982);
	TextDrawTextSize(ErrorBoxTagBackGround, 400.000000, 214.000000);
	TextDrawSetOutline(ErrorBoxTagBackGround, 1);
	TextDrawSetShadow(ErrorBoxTagBackGround, 0);
	TextDrawAlignment(ErrorBoxTagBackGround, 2);
	TextDrawColor(ErrorBoxTagBackGround, -141);
	TextDrawBackgroundColor(ErrorBoxTagBackGround, 255);
	TextDrawBoxColor(ErrorBoxTagBackGround, -16776961);
	TextDrawUseBox(ErrorBoxTagBackGround, 1);
	TextDrawSetProportional(ErrorBoxTagBackGround, 1);
	TextDrawSetSelectable(ErrorBoxTagBackGround, 0);

	ErrorBoxText_CuoWu = TextDrawCreate(484.000000, 132.000000, "Nowy_TextDraw");
	TextDrawFont(ErrorBoxText_CuoWu, 5);
	TextDrawLetterSize(ErrorBoxText_CuoWu, 0.600000, 2.000000);
	TextDrawTextSize(ErrorBoxText_CuoWu, 71.000000, 46.500000);
	TextDrawSetOutline(ErrorBoxText_CuoWu, 3);
	TextDrawSetShadow(ErrorBoxText_CuoWu, 0);
	TextDrawAlignment(ErrorBoxText_CuoWu, 2);
	TextDrawColor(ErrorBoxText_CuoWu, -1);
	TextDrawBackgroundColor(ErrorBoxText_CuoWu, 0);
	TextDrawBoxColor(ErrorBoxText_CuoWu, -206);
	TextDrawUseBox(ErrorBoxText_CuoWu, 1);
	TextDrawSetProportional(ErrorBoxText_CuoWu, 1);
	TextDrawSetSelectable(ErrorBoxText_CuoWu, 0);
	TextDrawSetPreviewModel(ErrorBoxText_CuoWu, -2032);
	TextDrawSetPreviewRot(ErrorBoxText_CuoWu, -88.000000, 0.000000, -180.000000, 0.159997);
	TextDrawSetPreviewVehCol(ErrorBoxText_CuoWu, 1, 1);
	
	ErrorBoxText_NoReg = TextDrawCreate(460.000000, 148.000000, "Nowy_TextDraw");
	TextDrawFont(ErrorBoxText_NoReg, 5);
	TextDrawLetterSize(ErrorBoxText_NoReg, 0.600000, 2.000000);
	TextDrawTextSize(ErrorBoxText_NoReg, 117.500000, 108.000000);
	TextDrawSetOutline(ErrorBoxText_NoReg, 1);
	TextDrawSetShadow(ErrorBoxText_NoReg, 0);
	TextDrawAlignment(ErrorBoxText_NoReg, 1);
	TextDrawColor(ErrorBoxText_NoReg, -1);
	TextDrawBackgroundColor(ErrorBoxText_NoReg, 0);
	TextDrawBoxColor(ErrorBoxText_NoReg, 50);
	TextDrawUseBox(ErrorBoxText_NoReg, 1);
	TextDrawSetProportional(ErrorBoxText_NoReg, 1);
	TextDrawSetSelectable(ErrorBoxText_NoReg, 0);
	TextDrawSetPreviewModel(ErrorBoxText_NoReg, -2033);
	TextDrawSetPreviewRot(ErrorBoxText_NoReg, -89.000000, 0.000000, -180.000000, 0.400000);
	TextDrawSetPreviewVehCol(ErrorBoxText_NoReg, 1, 1);
	
	ErrorBoxText_NoLogin = TextDrawCreate(460.000000, 148.000000, "Nowy_TextDraw");
	TextDrawFont(ErrorBoxText_NoLogin, 5);
	TextDrawLetterSize(ErrorBoxText_NoLogin, 0.600000, 2.000000);
	TextDrawTextSize(ErrorBoxText_NoLogin, 117.500000, 108.000000);
	TextDrawSetOutline(ErrorBoxText_NoLogin, 1);
	TextDrawSetShadow(ErrorBoxText_NoLogin, 0);
	TextDrawAlignment(ErrorBoxText_NoLogin, 1);
	TextDrawColor(ErrorBoxText_NoLogin, -1);
	TextDrawBackgroundColor(ErrorBoxText_NoLogin, 0);
	TextDrawBoxColor(ErrorBoxText_NoLogin, 50);
	TextDrawUseBox(ErrorBoxText_NoLogin, 1);
	TextDrawSetProportional(ErrorBoxText_NoLogin, 1);
	TextDrawSetSelectable(ErrorBoxText_NoLogin, 0);
	TextDrawSetPreviewModel(ErrorBoxText_NoLogin, -2034);
	TextDrawSetPreviewRot(ErrorBoxText_NoLogin, -89.000000, 0.000000, -180.000000, 0.400000);
	TextDrawSetPreviewVehCol(ErrorBoxText_NoLogin, 1, 1);
	return 1;
}
stock PlayerText:CreatePlayerErrorCloseBotton(playerid)
{
    SetSVarString("CPTD","CreatePlayerErrorCloseBotton");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, 613.000000, 143.000000, "X");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.466666, 2.249999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 624.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid, PlayerTextDraw);
	return PlayerTextDraw;
}


N::ShowPlayerErrorBox(playerid,type)
{
    HidePlayerErrorBox(playerid);
    TextDrawShowForPlayer(playerid,ErrorBoxBackGround);
    TextDrawShowForPlayer(playerid,ErrorBoxTagBackGround);
    TextDrawShowForPlayer(playerid,ErrorBoxText_CuoWu);
    ErrorBoxClose[playerid]=CreatePlayerErrorCloseBotton(playerid);
    switch(type)
    {
        case 0:TextDrawShowForPlayer(playerid,ErrorBoxText_NoReg);
        case 1:TextDrawShowForPlayer(playerid,ErrorBoxText_NoLogin);
    }
    ErrorBoxCloseRate[playerid]=0;
    PlayerErrorBoxShow[playerid]=true;
	return 1;
}
N::HidePlayerErrorBox(playerid)
{
    ErrorBoxCloseRate[playerid]=0;
    PlayerErrorBoxShow[playerid]=false;
    TextDrawHideForPlayer(playerid,ErrorBoxBackGround);
    TextDrawHideForPlayer(playerid,ErrorBoxTagBackGround);
    TextDrawHideForPlayer(playerid,ErrorBoxText_CuoWu);
    TextDrawHideForPlayer(playerid,ErrorBoxText_NoReg);
    TextDrawHideForPlayer(playerid,ErrorBoxText_NoLogin);
    SetSVarString("PTDD","ErrorBoxClose");
	if(ErrorBoxClose[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,ErrorBoxClose[playerid]);
    ErrorBoxClose[playerid]=PlayerText:INVALID_TEXT_DRAW;
	return 1;
}
N::RestPlayerErrorBoxDraws(playerid,bool:destroy)//³õÊ¼»¯Íæ¼Ò´íÎóDRAWS
{
    ErrorBoxCloseRate[playerid]=0;
    PlayerErrorBoxShow[playerid]=false;
    TextDrawHideForPlayer(playerid,ErrorBoxBackGround);
    TextDrawHideForPlayer(playerid,ErrorBoxTagBackGround);
    TextDrawHideForPlayer(playerid,ErrorBoxText_CuoWu);
    TextDrawHideForPlayer(playerid,ErrorBoxText_NoReg);
    TextDrawHideForPlayer(playerid,ErrorBoxText_NoLogin);
    if(destroy==true)
    {
        SetSVarString("PTDD","ErrorBoxClose");
		if(ErrorBoxClose[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,ErrorBoxClose[playerid]);
	}
    ErrorBoxClose[playerid]=PlayerText:INVALID_TEXT_DRAW;
	return 1;
}
