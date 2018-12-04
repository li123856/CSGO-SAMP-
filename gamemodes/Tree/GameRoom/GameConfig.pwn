N::GameConfigDrawInt()
{
	GameConfigTextDraw[0] = TextDrawCreate(235.000000, 120.000000, "LD_SPAC:WHITE");//按钮1背景
	TextDrawFont(GameConfigTextDraw[0], 4);
	TextDrawLetterSize(GameConfigTextDraw[0], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[0], 170.000000, 41.500000);
	TextDrawSetOutline(GameConfigTextDraw[0], 2);
	TextDrawSetShadow(GameConfigTextDraw[0], 0);
	TextDrawAlignment(GameConfigTextDraw[0], 1);
	TextDrawColor(GameConfigTextDraw[0], 1296911766);
	TextDrawBackgroundColor(GameConfigTextDraw[0], 255);
	TextDrawBoxColor(GameConfigTextDraw[0], 50);
	TextDrawUseBox(GameConfigTextDraw[0], 1);
	TextDrawSetProportional(GameConfigTextDraw[0], 1);
	TextDrawSetSelectable(GameConfigTextDraw[0], 1);

	GameConfigTextDraw[1] = TextDrawCreate(235.000000, 180.000000, "LD_SPAC:WHITE");//按钮2背景
	TextDrawFont(GameConfigTextDraw[1], 4);
	TextDrawLetterSize(GameConfigTextDraw[1], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[1], 170.000000, 41.500000);
	TextDrawSetOutline(GameConfigTextDraw[1], 2);
	TextDrawSetShadow(GameConfigTextDraw[1], 0);
	TextDrawAlignment(GameConfigTextDraw[1], 1);
	TextDrawColor(GameConfigTextDraw[1], 1296911766);
	TextDrawBackgroundColor(GameConfigTextDraw[1], 255);
	TextDrawBoxColor(GameConfigTextDraw[1], 50);
	TextDrawUseBox(GameConfigTextDraw[1], 1);
	TextDrawSetProportional(GameConfigTextDraw[1], 1);
	TextDrawSetSelectable(GameConfigTextDraw[1], 1);

	GameConfigTextDraw[2] = TextDrawCreate(235.000000, 240.000000, "LD_SPAC:WHITE");//按钮3背景
	TextDrawFont(GameConfigTextDraw[2], 4);
	TextDrawLetterSize(GameConfigTextDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[2], 170.000000, 41.500000);
	TextDrawSetOutline(GameConfigTextDraw[2], 2);
	TextDrawSetShadow(GameConfigTextDraw[2], 0);
	TextDrawAlignment(GameConfigTextDraw[2], 1);
	TextDrawColor(GameConfigTextDraw[2], 1296911766);
	TextDrawBackgroundColor(GameConfigTextDraw[2], 255);
	TextDrawBoxColor(GameConfigTextDraw[2], 50);
	TextDrawUseBox(GameConfigTextDraw[2], 1);
	TextDrawSetProportional(GameConfigTextDraw[2], 1);
	TextDrawSetSelectable(GameConfigTextDraw[2], 1);

	GameConfigTextDraw[3] = TextDrawCreate(235.000000, 300.000000, "LD_SPAC:WHITE");//按钮4背景
	TextDrawFont(GameConfigTextDraw[3], 4);
	TextDrawLetterSize(GameConfigTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[3], 170.000000, 41.500000);
	TextDrawSetOutline(GameConfigTextDraw[3], 2);
	TextDrawSetShadow(GameConfigTextDraw[3], 0);
	TextDrawAlignment(GameConfigTextDraw[3], 1);
	TextDrawColor(GameConfigTextDraw[3], 1296911766);
	TextDrawBackgroundColor(GameConfigTextDraw[3], 255);
	TextDrawBoxColor(GameConfigTextDraw[3], 50);
	TextDrawUseBox(GameConfigTextDraw[3], 1);
	TextDrawSetProportional(GameConfigTextDraw[3], 1);
	TextDrawSetSelectable(GameConfigTextDraw[3], 1);

	GameConfigTextDraw[4] = TextDrawCreate(249.000000, 70.000000, "Nowy_TextDraw");//按钮1返回大厅
	TextDrawFont(GameConfigTextDraw[4], 5);
	TextDrawLetterSize(GameConfigTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[4], 140.000000, 140.000000);
	TextDrawSetOutline(GameConfigTextDraw[4], 1);
	TextDrawSetShadow(GameConfigTextDraw[4], 0);
	TextDrawAlignment(GameConfigTextDraw[4], 1);
	TextDrawColor(GameConfigTextDraw[4], -1);
	TextDrawBackgroundColor(GameConfigTextDraw[4], 0);
	TextDrawBoxColor(GameConfigTextDraw[4], 50);
	TextDrawUseBox(GameConfigTextDraw[4], 1);
	TextDrawSetProportional(GameConfigTextDraw[4], 1);
	TextDrawSetSelectable(GameConfigTextDraw[4], 0);
	TextDrawSetPreviewModel(GameConfigTextDraw[4], -2072);
	TextDrawSetPreviewRot(GameConfigTextDraw[4], 90.000000, 180.000000, 0.000000, 0.229999);
	TextDrawSetPreviewVehCol(GameConfigTextDraw[4], 1, 1);

	GameConfigTextDraw[5] = TextDrawCreate(249.000000, 130.000000, "Nowy_TextDraw");//按钮2排行榜
	TextDrawFont(GameConfigTextDraw[5], 5);
	TextDrawLetterSize(GameConfigTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[5], 140.000000, 140.000000);
	TextDrawSetOutline(GameConfigTextDraw[5], 1);
	TextDrawSetShadow(GameConfigTextDraw[5], 0);
	TextDrawAlignment(GameConfigTextDraw[5], 1);
	TextDrawColor(GameConfigTextDraw[5], 16711935);
	TextDrawBackgroundColor(GameConfigTextDraw[5], 0);
	TextDrawBoxColor(GameConfigTextDraw[5], 50);
	TextDrawUseBox(GameConfigTextDraw[5], 1);
	TextDrawSetProportional(GameConfigTextDraw[5], 1);
	TextDrawSetSelectable(GameConfigTextDraw[5], 0);
	TextDrawSetPreviewModel(GameConfigTextDraw[5], -2073);
	TextDrawSetPreviewRot(GameConfigTextDraw[5], 90.000000, 180.000000, 0.000000, 0.229999);
	TextDrawSetPreviewVehCol(GameConfigTextDraw[5], 1, 1);

	GameConfigTextDraw[6] = TextDrawCreate(249.000000, 191.000000, "Nowy_TextDraw");//按钮3更换阵营
	TextDrawFont(GameConfigTextDraw[6], 5);
	TextDrawLetterSize(GameConfigTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[6], 140.000000, 140.000000);
	TextDrawSetOutline(GameConfigTextDraw[6], 1);
	TextDrawSetShadow(GameConfigTextDraw[6], 0);
	TextDrawAlignment(GameConfigTextDraw[6], 1);
	TextDrawColor(GameConfigTextDraw[6], 1687547391);
	TextDrawBackgroundColor(GameConfigTextDraw[6], 0);
	TextDrawBoxColor(GameConfigTextDraw[6], 50);
	TextDrawUseBox(GameConfigTextDraw[6], 1);
	TextDrawSetProportional(GameConfigTextDraw[6], 1);
	TextDrawSetSelectable(GameConfigTextDraw[6], 0);
	TextDrawSetPreviewModel(GameConfigTextDraw[6], -2074);
	TextDrawSetPreviewRot(GameConfigTextDraw[6], 90.000000, 180.000000, 0.000000, 0.229999);
	TextDrawSetPreviewVehCol(GameConfigTextDraw[6], 1, 1);

	GameConfigTextDraw[7] = TextDrawCreate(249.000000, 250.000000, "Nowy_TextDraw");//按钮4离开房间
	TextDrawFont(GameConfigTextDraw[7], 5);
	TextDrawLetterSize(GameConfigTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(GameConfigTextDraw[7], 140.000000, 140.000000);
	TextDrawSetOutline(GameConfigTextDraw[7], 1);
	TextDrawSetShadow(GameConfigTextDraw[7], 0);
	TextDrawAlignment(GameConfigTextDraw[7], 1);
	TextDrawColor(GameConfigTextDraw[7], -1962934017);
	TextDrawBackgroundColor(GameConfigTextDraw[7], 0);
	TextDrawBoxColor(GameConfigTextDraw[7], 50);
	TextDrawUseBox(GameConfigTextDraw[7], 1);
	TextDrawSetProportional(GameConfigTextDraw[7], 1);
	TextDrawSetSelectable(GameConfigTextDraw[7], 0);
	TextDrawSetPreviewModel(GameConfigTextDraw[7], -2075);
	TextDrawSetPreviewRot(GameConfigTextDraw[7], 90.000000, 180.000000, 0.000000, 0.229999);
	TextDrawSetPreviewVehCol(GameConfigTextDraw[7], 1, 1);
	return 1;
}
N::ShowPlayerGameConfig(playerid)
{
	forex(i,MAX_GAMECONFIG_TEXTDRAWS)TextDrawShowForPlayer(playerid,GameConfigTextDraw[i]);
	PlayerGameConfigShow[playerid]=true;
	SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::HidePlayerGameConfig(playerid)
{
	forex(i,MAX_GAMECONFIG_TEXTDRAWS)TextDrawHideForPlayer(playerid,GameConfigTextDraw[i]);
	PlayerGameConfigShow[playerid]=false;
	SetHealthBarVisibleEx(playerid, true);
	return 1;
}
