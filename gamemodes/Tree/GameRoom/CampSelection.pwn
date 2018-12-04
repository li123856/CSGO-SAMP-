N::GameRoomCampSelectDrawInt()
{
	GameRoomCampSelectDraw[0] = TextDrawCreate(314.000000, 52.000000, "_");
	TextDrawFont(GameRoomCampSelectDraw[0], 1);
	TextDrawLetterSize(GameRoomCampSelectDraw[0], 0.600000, 7.450003);
	TextDrawTextSize(GameRoomCampSelectDraw[0], 400.000000, 487.500000);
	TextDrawSetOutline(GameRoomCampSelectDraw[0], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[0], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[0], 2);
	TextDrawColor(GameRoomCampSelectDraw[0], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[0], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[0], 100);
	TextDrawUseBox(GameRoomCampSelectDraw[0], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[0], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[0], 0);

	GameRoomCampSelectDraw[1] = TextDrawCreate(314.000000, 125.000000, "_");
	TextDrawFont(GameRoomCampSelectDraw[1], 1);
	TextDrawLetterSize(GameRoomCampSelectDraw[1], 0.600000, 30.699985);
	TextDrawTextSize(GameRoomCampSelectDraw[1], 400.000000, 487.500000);
	TextDrawSetOutline(GameRoomCampSelectDraw[1], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[1], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[1], 2);
	TextDrawColor(GameRoomCampSelectDraw[1], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[1], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[1], 100);
	TextDrawUseBox(GameRoomCampSelectDraw[1], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[1], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[1], 0);

	GameRoomCampSelectDraw[2] = TextDrawCreate(108.000000, 135.000000, "LD_SPAC:WHITE");//恐怖分子背景
	TextDrawFont(GameRoomCampSelectDraw[2], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[2], 100.500000, 32.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[2], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[2], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[2], 1);
	TextDrawColor(GameRoomCampSelectDraw[2], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[2], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[2], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[2], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[2], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[2], 1);

	GameRoomCampSelectDraw[3] = TextDrawCreate(108.000000, 179.000000, "LD_SPAC:WHITE");//反恐精英背景
	TextDrawFont(GameRoomCampSelectDraw[3], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[3], 100.500000, 32.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[3], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[3], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[3], 1);
	TextDrawColor(GameRoomCampSelectDraw[3], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[3], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[3], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[3], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[3], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[3], 1);

	GameRoomCampSelectDraw[4] = TextDrawCreate(108.000000, 272.000000, "LD_SPAC:WHITE");//自动分配背景
	TextDrawFont(GameRoomCampSelectDraw[4], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[4], 100.500000, 32.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[4], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[4], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[4], 1);
	TextDrawColor(GameRoomCampSelectDraw[4], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[4], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[4], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[4], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[4], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[4], 1);

	GameRoomCampSelectDraw[5] = TextDrawCreate(108.000000, 317.000000, "LD_SPAC:WHITE");//观察者背景
	TextDrawFont(GameRoomCampSelectDraw[5], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[5], 100.500000, 32.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[5], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[5], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[5], 1);
	TextDrawColor(GameRoomCampSelectDraw[5], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[5], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[5], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[5], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[5], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[5], 1);

	GameRoomCampSelectDraw[6] = TextDrawCreate(452.000000, 359.000000, "LD_SPAC:WHITE");//离开背景
	TextDrawFont(GameRoomCampSelectDraw[6], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[6], 100.500000, 32.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[6], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[6], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[6], 1);
	TextDrawColor(GameRoomCampSelectDraw[6], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[6], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[6], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[6], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[6], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[6], 1);

	GameRoomCampSelectDraw[7] = TextDrawCreate(218.000000, 135.000000, "LD_SPAC:WHITE");//介绍背景
	TextDrawFont(GameRoomCampSelectDraw[7], 4);
	TextDrawLetterSize(GameRoomCampSelectDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[7], 329.500000, 214.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[7], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[7], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[7], 1);
	TextDrawColor(GameRoomCampSelectDraw[7], 150);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[7], 255);
	TextDrawBoxColor(GameRoomCampSelectDraw[7], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[7], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[7], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[7], 0);

	GameRoomCampSelectDraw[8] = TextDrawCreate(108.000000, 26.000000, "Nowy_TextDraw");//选择人物文字
	TextDrawFont(GameRoomCampSelectDraw[8], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[8], 120.000000, 122.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[8], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[8], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[8], 1);
	TextDrawColor(GameRoomCampSelectDraw[8], -3841);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[8], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[8], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[8], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[8], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[8], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[8], -2066);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[8], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[8], 1, 1);

	GameRoomCampSelectDraw[9] = TextDrawCreate(114.000000, 106.000000, "Nowy_TextDraw");//恐怖分子文字
	TextDrawFont(GameRoomCampSelectDraw[9], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[9], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[9], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[9], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[9], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[9], 1);
	TextDrawColor(GameRoomCampSelectDraw[9], -16776961);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[9], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[9], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[9], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[9], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[9], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[9], -2067);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[9], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[9], 1, 1);

	GameRoomCampSelectDraw[10] = TextDrawCreate(114.000000, 150.000000, "Nowy_TextDraw");//反恐精英文字
	TextDrawFont(GameRoomCampSelectDraw[10], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[10], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[10], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[10], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[10], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[10], 1);
	TextDrawColor(GameRoomCampSelectDraw[10], 65535);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[10], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[10], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[10], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[10], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[10], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[10], -2068);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[10], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[10], 1, 1);

	GameRoomCampSelectDraw[11] = TextDrawCreate(114.000000, 243.000000, "Nowy_TextDraw");//自动分配文字
	TextDrawFont(GameRoomCampSelectDraw[11], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[11], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[11], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[11], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[11], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[11], 1);
	TextDrawColor(GameRoomCampSelectDraw[11], -741092353);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[11], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[11], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[11], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[11], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[11], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[11], -2069);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[11], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[11], 1, 1);

	GameRoomCampSelectDraw[12] = TextDrawCreate(114.000000, 288.000000, "Nowy_TextDraw");//观看者文字
	TextDrawFont(GameRoomCampSelectDraw[12], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[12], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[12], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[12], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[12], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[12], 1);
	TextDrawColor(GameRoomCampSelectDraw[12], -1);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[12], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[12], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[12], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[12], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[12], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[12], -2070);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[12], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[12], 1, 1);

	GameRoomCampSelectDraw[13] = TextDrawCreate(458.000000, 330.000000, "Nowy_TextDraw");//离开房间文字
	TextDrawFont(GameRoomCampSelectDraw[13], 5);
	TextDrawLetterSize(GameRoomCampSelectDraw[13], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomCampSelectDraw[13], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomCampSelectDraw[13], 1);
	TextDrawSetShadow(GameRoomCampSelectDraw[13], 0);
	TextDrawAlignment(GameRoomCampSelectDraw[13], 1);
	TextDrawColor(GameRoomCampSelectDraw[13], -1);
	TextDrawBackgroundColor(GameRoomCampSelectDraw[13], 0);
	TextDrawBoxColor(GameRoomCampSelectDraw[13], 50);
	TextDrawUseBox(GameRoomCampSelectDraw[13], 1);
	TextDrawSetProportional(GameRoomCampSelectDraw[13], 1);
	TextDrawSetSelectable(GameRoomCampSelectDraw[13], 0);
	TextDrawSetPreviewModel(GameRoomCampSelectDraw[13], -2071);
	TextDrawSetPreviewRot(GameRoomCampSelectDraw[13], -90.000000, 0.000000, -180.000000, 0.200000);
	TextDrawSetPreviewVehCol(GameRoomCampSelectDraw[13], 1, 1);
	return 1;
}
N::ShowPlayerGameRoomCampSelect(playerid)
{
	forex(i,MAX_GAMEROOM_CAMPSELECT)TextDrawShowForPlayer(playerid,GameRoomCampSelectDraw[i]);
	SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::HidePlayerGameRoomCampSelect(playerid)
{
	forex(i,MAX_GAMEROOM_CAMPSELECT)TextDrawHideForPlayer(playerid,GameRoomCampSelectDraw[i]);
	SetHealthBarVisibleEx(playerid, true);
	return 1;
}
