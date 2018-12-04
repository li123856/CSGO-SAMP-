N::GameRoomBuyGunDrawInt()
{
	GameRoomBuyGunTextDraw[0] = TextDrawCreate(320.000000, 54.000000, "_");//tagback
	TextDrawFont(GameRoomBuyGunTextDraw[0], 1);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[0], 0.600000, 6.349995);
	TextDrawTextSize(GameRoomBuyGunTextDraw[0], 400.000000, 552.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[0], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[0], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[0], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[0], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[0], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[0], 130);
	TextDrawUseBox(GameRoomBuyGunTextDraw[0], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[0], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[0], 0);
	
	GameRoomBuyGunTextDraw[1] = TextDrawCreate(320.000000, 116.000000, "_");//bodyback
	TextDrawFont(GameRoomBuyGunTextDraw[1], 1);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[1], 0.600000, 33.349998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[1], 400.000000, 552.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[1], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[1], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[1], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[1], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[1], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[1], 130);
	TextDrawUseBox(GameRoomBuyGunTextDraw[1], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[1], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[1], 0);
	
	GameRoomBuyGunTextDraw[2] = TextDrawCreate(178.000000, 136.000000, "LD_SPAC:WHITE");//line
	TextDrawFont(GameRoomBuyGunTextDraw[2], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[2], 0.500000, 264.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[2], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[2], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[2], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[2], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[2], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[2], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[2], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[2], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[2], 1);

	GameRoomBuyGunTextDraw[3] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//tagname
	TextDrawFont(GameRoomBuyGunTextDraw[3], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[3], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[3], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[3], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[3], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[3], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[3], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[3], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[3], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[3], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[3], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[3], -2094);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[3], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[3], 1, 1);

	GameRoomBuyGunTextDraw[4] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");//shouqiang_back
	TextDrawFont(GameRoomBuyGunTextDraw[4], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[4], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[4], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[4], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[4], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[4], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[4], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[4], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[4], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[4], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[4], 1);

	GameRoomBuyGunTextDraw[5] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//sandan_back
	TextDrawFont(GameRoomBuyGunTextDraw[5], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[5], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[5], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[5], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[5], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[5], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[5], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[5], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[5], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[5], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[5], 1);

	GameRoomBuyGunTextDraw[6] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//chongfeng_back
	TextDrawFont(GameRoomBuyGunTextDraw[6], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[6], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[6], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[6], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[6], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[6], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[6], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[6], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[6], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[6], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[6], 1);

	GameRoomBuyGunTextDraw[7] = TextDrawCreate(66.000000, 226.000000, "LD_SPAC:WHITE");//buqiang_back
	TextDrawFont(GameRoomBuyGunTextDraw[7], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[7], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[7], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[7], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[7], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[7], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[7], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[7], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[7], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[7], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[7], 1);

	GameRoomBuyGunTextDraw[8] = TextDrawCreate(66.000000, 256.000000, "LD_SPAC:WHITE");//jiguan_back
	TextDrawFont(GameRoomBuyGunTextDraw[8], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[8], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[8], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[8], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[8], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[8], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[8], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[8], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[8], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[8], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[8], 1);

	GameRoomBuyGunTextDraw[9] = TextDrawCreate(66.000000, 286.000000, "LD_SPAC:WHITE");//zhuwuqi_back
	TextDrawFont(GameRoomBuyGunTextDraw[9], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[9], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[9], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[9], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[9], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[9], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[9], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[9], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[9], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[9], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[9], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[9], 1);

	GameRoomBuyGunTextDraw[10] = TextDrawCreate(66.000000, 316.000000, "LD_SPAC:WHITE");//fuwuqi_back
	TextDrawFont(GameRoomBuyGunTextDraw[10], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[10], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[10], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[10], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[10], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[10], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[10], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[10], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[10], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[10], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[10], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[10], 1);

	GameRoomBuyGunTextDraw[11] = TextDrawCreate(66.000000, 346.000000, "LD_SPAC:WHITE");//zhuangbei_back
	TextDrawFont(GameRoomBuyGunTextDraw[11], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[11], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[11], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[11], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[11], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[11], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[11], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[11], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[11], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[11], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[11], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[11], 1);

	GameRoomBuyGunTextDraw[12] = TextDrawCreate(66.000000, 376.000000, "LD_SPAC:WHITE");//quxiao_back
	TextDrawFont(GameRoomBuyGunTextDraw[12], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[12], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[12], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[12], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[12], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[12], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[12], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[12], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[12], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[12], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[12], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[12], 1);



	GameRoomBuyGunTextDraw[13] = TextDrawCreate(192.000000, 136.000000, "LD_SPAC:WHITE");//zidonggoumai_back
	TextDrawFont(GameRoomBuyGunTextDraw[13], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[13], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[13], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[13], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[13], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[13], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[13], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[13], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[13], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[13], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[13], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[13], 1);

	GameRoomBuyGunTextDraw[14] = TextDrawCreate(192.000000, 166.000000, "LD_SPAC:WHITE");//chongxingoumai_back
	TextDrawFont(GameRoomBuyGunTextDraw[14], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[14], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[14], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[14], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[14], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[14], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[14], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[14], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[14], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[14], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[14], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[14], 1);

	GameRoomBuyGunTextDraw[15] = TextDrawCreate(79.000000, 143.000000, "Nowy_TextDraw");//sandan
	TextDrawFont(GameRoomBuyGunTextDraw[15], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[15], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[15], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[15], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[15], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[15], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[15], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[15], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[15], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[15], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[15], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[15], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[15], -2097);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[15], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[15], 1, 1);

	GameRoomBuyGunTextDraw[16] = TextDrawCreate(79.000000, 112.000000, "Nowy_TextDraw");//shouqiang
	TextDrawFont(GameRoomBuyGunTextDraw[16], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[16], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[16], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[16], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[16], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[16], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[16], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[16], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[16], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[16], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[16], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[16], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[16], -2096);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[16], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[16], 1, 1);

	GameRoomBuyGunTextDraw[17] = TextDrawCreate(79.000000, 203.000000, "Nowy_TextDraw");//buqiang
	TextDrawFont(GameRoomBuyGunTextDraw[17], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[17], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[17], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[17], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[17], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[17], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[17], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[17], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[17], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[17], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[17], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[17], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[17], -2098);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[17], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[17], 1, 1);

	GameRoomBuyGunTextDraw[18] = TextDrawCreate(79.000000, 233.000000, "Nowy_TextDraw");//jiguan
	TextDrawFont(GameRoomBuyGunTextDraw[18], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[18], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[18], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[18], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[18], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[18], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[18], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[18], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[18], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[18], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[18], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[18], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[18], -2099);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[18], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[18], 1, 1);

	GameRoomBuyGunTextDraw[19] = TextDrawCreate(79.000000, 260.000000, "Nowy_TextDraw");//zhuwuqi
	TextDrawFont(GameRoomBuyGunTextDraw[19], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[19], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[19], 75.000000, 75.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[19], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[19], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[19], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[19], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[19], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[19], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[19], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[19], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[19], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[19], -2100);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[19], -90.000000, 0.000000, -180.000000, 0.259999);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[19], 1, 1);

	GameRoomBuyGunTextDraw[20] = TextDrawCreate(79.000000, 290.000000, "Nowy_TextDraw");//fuwuqi
	TextDrawFont(GameRoomBuyGunTextDraw[20], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[20], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[20], 75.000000, 75.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[20], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[20], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[20], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[20], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[20], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[20], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[20], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[20], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[20], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[20], -2101);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[20], -90.000000, 0.000000, -180.000000, 0.259999);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[20], 1, 1);

	GameRoomBuyGunTextDraw[21] = TextDrawCreate(79.000000, 323.000000, "Nowy_TextDraw");//zhuangbei
	TextDrawFont(GameRoomBuyGunTextDraw[21], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[21], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[21], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[21], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[21], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[21], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[21], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[21], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[21], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[21], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[21], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[21], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[21], -2102);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[21], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[21], 1, 1);

	GameRoomBuyGunTextDraw[22] = TextDrawCreate(77.000000, 171.000000, "Nowy_TextDraw");//chongfeng
	TextDrawFont(GameRoomBuyGunTextDraw[22], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[22], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[22], 75.000000, 75.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[22], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[22], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[22], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[22], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[22], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[22], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[22], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[22], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[22], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[22], -2095);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[22], -90.000000, 0.000000, -180.000000, 0.239997);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[22], 1, 1);

	GameRoomBuyGunTextDraw[23] = TextDrawCreate(79.000000, 353.000000, "Nowy_TextDraw");//quxiao
	TextDrawFont(GameRoomBuyGunTextDraw[23], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[23], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[23], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[23], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[23], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[23], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[23], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[23], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[23], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[23], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[23], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[23], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[23], -2091);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[23], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[23], 1, 1);

	GameRoomBuyGunTextDraw[24] = TextDrawCreate(207.000000, 113.000000, "Nowy_TextDraw");//zidonggoumai
	TextDrawFont(GameRoomBuyGunTextDraw[24], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[24], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[24], 70.000000, 70.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[24], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[24], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[24], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[24], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[24], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[24], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[24], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[24], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[24], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[24], -2103);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[24], -90.000000, 0.000000, -180.000000, 0.209996);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[24], 1, 1);

	GameRoomBuyGunTextDraw[25] = TextDrawCreate(198.000000, 133.000000, "Nowy_TextDraw");//chongxingoumai
	TextDrawFont(GameRoomBuyGunTextDraw[25], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[25], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[25], 90.000000, 90.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[25], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[25], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[25], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[25], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[25], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[25], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[25], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[25], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[25], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[25], -2104);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[25], -90.000000, 0.000000, -180.000000, 0.439998);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[25], 1, 1);
	/***************************************************************************/
	GameRoomBuyGunTextDraw[26] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//shouqiang_tagname
	TextDrawFont(GameRoomBuyGunTextDraw[26], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[26], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[26], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[26], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[26], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[26], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[26], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[26], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[26], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[26], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[26], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[26], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[26], -2096);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[26], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[26], 1, 1);
	
	GameRoomBuyGunTextDraw[27] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");//9mm_back
	TextDrawFont(GameRoomBuyGunTextDraw[27], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[27], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[27], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[27], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[27], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[27], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[27], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[27], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[27], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[27], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[27], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[27], 1);

	GameRoomBuyGunTextDraw[28] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//s9mm_back
	TextDrawFont(GameRoomBuyGunTextDraw[28], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[28], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[28], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[28], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[28], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[28], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[28], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[28], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[28], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[28], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[28], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[28], 1);

	GameRoomBuyGunTextDraw[29] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//deagle_back
	TextDrawFont(GameRoomBuyGunTextDraw[29], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[29], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[29], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[29], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[29], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[29], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[29], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[29], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[29], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[29], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[29], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[29], 1);

	GameRoomBuyGunTextDraw[30] = TextDrawCreate(112.000000, 138.000000, "9MM");//9mm_text
	TextDrawFont(GameRoomBuyGunTextDraw[30], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[30], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[30], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[30], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[30], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[30], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[30], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[30], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[30], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[30], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[30], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[30], 0);

	GameRoomBuyGunTextDraw[31] = TextDrawCreate(113.000000, 168.000000, "Silenced 9mm");//Silenced 9mm_text
	TextDrawFont(GameRoomBuyGunTextDraw[31], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[31], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[31], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[31], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[31], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[31], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[31], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[31], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[31], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[31], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[31], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[31], 0);

	GameRoomBuyGunTextDraw[32] = TextDrawCreate(114.000000, 198.000000, "Desert Eagle");//Desert Eagle_text
	TextDrawFont(GameRoomBuyGunTextDraw[32], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[32], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[32], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[32], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[32], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[32], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[32], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[32], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[32], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[32], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[32], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[32], 0);
	
	GameRoomBuyGunTextDraw[33] = TextDrawCreate(381.000000, 140.000000, "_");//weapon_back
	TextDrawFont(GameRoomBuyGunTextDraw[33], 1);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[33], 0.600000, 12.449996);
	TextDrawTextSize(GameRoomBuyGunTextDraw[33], 400.000000, 316.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[33], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[33], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[33], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[33], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[33], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[33], 255);
	TextDrawUseBox(GameRoomBuyGunTextDraw[33], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[33], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[33], 0);
	
	GameRoomBuyGunTextDraw[34] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//9mm_model
	TextDrawFont(GameRoomBuyGunTextDraw[34], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[34], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[34], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[34], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[34], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[34], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[34], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[34], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[34], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[34], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[34], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[34], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[34], 346);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[34], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[34], 1, 1);
	
	GameRoomBuyGunTextDraw[35] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Silenced 9mm_model
	TextDrawFont(GameRoomBuyGunTextDraw[35], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[35], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[35], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[35], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[35], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[35], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[35], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[35], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[35], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[35], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[35], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[35], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[35], 347);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[35], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[35], 1, 1);
	
	GameRoomBuyGunTextDraw[36] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Desert Eagle_model
	TextDrawFont(GameRoomBuyGunTextDraw[36], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[36], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[36], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[36], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[36], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[36], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[36], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[36], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[36], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[36], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[36], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[36], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[36], 348);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[36], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[36], 1, 1);

	GameRoomBuyGunTextDraw[37] = TextDrawCreate(212.000000, 220.000000, "Nowy_TextDraw");//jiage_Text
	TextDrawFont(GameRoomBuyGunTextDraw[37], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[37], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[37], 50.000000, 50.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[37], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[37], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[37], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[37], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[37], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[37], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[37], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[37], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[37], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[37], -2041);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[37], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[37], 1, 1);

	GameRoomBuyGunTextDraw[38] = TextDrawCreate(251.000000, 238.000000, "1000");//9mm_price
	TextDrawFont(GameRoomBuyGunTextDraw[38], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[38], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[38], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[38], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[38], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[38], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[38], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[38], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[38], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[38], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[38], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[38], 0);
	
	GameRoomBuyGunTextDraw[39] = TextDrawCreate(251.000000, 238.000000, "1001");//Silenced 9mm_price
	TextDrawFont(GameRoomBuyGunTextDraw[39], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[39], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[39], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[39], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[39], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[39], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[39], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[39], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[39], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[39], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[39], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[39], 0);
	
	GameRoomBuyGunTextDraw[40] = TextDrawCreate(251.000000, 238.000000, "1002");//Silenced 9mm_price
	TextDrawFont(GameRoomBuyGunTextDraw[40], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[40], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[40], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[40], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[40], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[40], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[40], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[40], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[40], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[40], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[40], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[40], 0);
	
	GameRoomBuyGunTextDraw[41] = TextDrawCreate(336.000000, 232.000000, "Nowy_TextDraw");//goumaishangpin
	TextDrawFont(GameRoomBuyGunTextDraw[41], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[41], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[41], 80.000000, 80.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[41], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[41], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[41], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[41], 16777215);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[41], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[41], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[41], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[41], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[41], 1);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[41], -2043);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[41], -90.000000, 0.000000, -180.000000, 0.239995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[41], 1, 1);

	GameRoomBuyGunTextDraw[42] = TextDrawCreate(530.000000, 363.000000, "Nowy_TextDraw");//quxiao
	TextDrawFont(GameRoomBuyGunTextDraw[42], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[42], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[42], 80.000000, 80.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[42], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[42], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[42], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[42], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[42], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[42], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[42], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[42], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[42], 1);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[42], -2091);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[42], -90.000000, 0.000000, -180.000000, 0.239995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[42], 1, 1);


	GameRoomBuyGunTextDraw[43] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");//Shotgun_back
	TextDrawFont(GameRoomBuyGunTextDraw[43], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[43], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[43], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[43], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[43], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[43], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[43], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[43], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[43], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[43], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[43], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[43], 1);

	GameRoomBuyGunTextDraw[44] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//Sawnoff _back
	TextDrawFont(GameRoomBuyGunTextDraw[44], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[44], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[44], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[44], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[44], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[44], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[44], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[44], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[44], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[44], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[44], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[44], 1);

	GameRoomBuyGunTextDraw[45] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//Combat _back
	TextDrawFont(GameRoomBuyGunTextDraw[45], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[45], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[45], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[45], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[45], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[45], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[45], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[45], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[45], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[45], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[45], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[45], 1);

	GameRoomBuyGunTextDraw[46] = TextDrawCreate(112.000000, 138.000000, "Shotgun");//Shotgun_text
	TextDrawFont(GameRoomBuyGunTextDraw[46], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[46], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[46], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[46], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[46], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[46], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[46], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[46], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[46], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[46], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[46], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[46], 0);

	GameRoomBuyGunTextDraw[47] = TextDrawCreate(113.000000, 168.000000, "Sawnoff");//Sawnoff_text
	TextDrawFont(GameRoomBuyGunTextDraw[47], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[47], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[47], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[47], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[47], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[47], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[47], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[47], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[47], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[47], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[47], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[47], 0);

	GameRoomBuyGunTextDraw[48] = TextDrawCreate(114.000000, 198.000000, "Combat");//Combat_text
	TextDrawFont(GameRoomBuyGunTextDraw[48], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[48], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[48], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[48], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[48], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[48], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[48], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[48], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[48], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[48], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[48], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[48], 0);

	GameRoomBuyGunTextDraw[49] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//Shotgun_tagname
	TextDrawFont(GameRoomBuyGunTextDraw[49], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[49], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[49], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[49], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[49], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[49], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[49], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[49], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[49], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[49], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[49], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[49], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[49], -2097);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[49], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[49], 1, 1);

	GameRoomBuyGunTextDraw[50] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Shotgun_model
	TextDrawFont(GameRoomBuyGunTextDraw[50], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[50], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[50], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[50], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[50], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[50], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[50], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[50], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[50], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[50], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[50], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[50], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[50], 349);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[50], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[50], 1, 1);

	GameRoomBuyGunTextDraw[51] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Sawnoff_model
	TextDrawFont(GameRoomBuyGunTextDraw[51], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[51], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[51], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[51], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[51], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[51], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[51], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[51], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[51], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[51], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[51], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[51], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[51], 350);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[51], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[51], 1, 1);

	GameRoomBuyGunTextDraw[52] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Combat_model
	TextDrawFont(GameRoomBuyGunTextDraw[52], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[52], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[52], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[52], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[52], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[52], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[52], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[52], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[52], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[52], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[52], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[52], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[52], 351);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[52], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[52], 1, 1);
	
	GameRoomBuyGunTextDraw[53] = TextDrawCreate(251.000000, 238.000000, "1000");//Shotgun_price
	TextDrawFont(GameRoomBuyGunTextDraw[53], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[53], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[53], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[53], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[53], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[53], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[53], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[53], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[53], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[53], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[53], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[53], 0);

	GameRoomBuyGunTextDraw[54] = TextDrawCreate(251.000000, 238.000000, "1001");//Sawnoff_price
	TextDrawFont(GameRoomBuyGunTextDraw[54], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[54], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[54], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[54], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[54], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[54], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[54], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[54], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[54], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[54], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[54], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[54], 0);

	GameRoomBuyGunTextDraw[55] = TextDrawCreate(251.000000, 238.000000, "1002");//Combat_price
	TextDrawFont(GameRoomBuyGunTextDraw[55], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[55], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[55], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[55], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[55], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[55], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[55], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[55], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[55], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[55], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[55], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[55], 0);
	

	GameRoomBuyGunTextDraw[56] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");///Uzi_back
	TextDrawFont(GameRoomBuyGunTextDraw[56], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[56], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[56], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[56], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[56], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[56], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[56], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[56], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[56], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[56], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[56], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[56], 1);

	GameRoomBuyGunTextDraw[57] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//MP5_back
	TextDrawFont(GameRoomBuyGunTextDraw[57], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[57], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[57], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[57], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[57], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[57], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[57], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[57], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[57], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[57], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[57], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[57], 1);

	GameRoomBuyGunTextDraw[58] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//Tec-9_back
	TextDrawFont(GameRoomBuyGunTextDraw[58], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[58], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[58], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[58], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[58], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[58], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[58], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[58], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[58], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[58], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[58], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[58], 1);

	GameRoomBuyGunTextDraw[59] = TextDrawCreate(112.000000, 138.000000, "Uzi");//Uzi_text
	TextDrawFont(GameRoomBuyGunTextDraw[59], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[59], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[59], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[59], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[59], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[59], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[59], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[59], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[59], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[59], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[59], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[59], 0);

	GameRoomBuyGunTextDraw[60] = TextDrawCreate(113.000000, 168.000000, "MP5");//MP5_text
	TextDrawFont(GameRoomBuyGunTextDraw[60], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[60], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[60], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[60], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[60], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[60], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[60], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[60], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[60], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[60], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[60], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[60], 0);

	GameRoomBuyGunTextDraw[61] = TextDrawCreate(114.000000, 198.000000, "Tec-9");//Tec-9_text
	TextDrawFont(GameRoomBuyGunTextDraw[61], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[61], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[61], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[61], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[61], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[61], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[61], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[61], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[61], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[61], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[61], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[61], 0);

	GameRoomBuyGunTextDraw[62] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//Uzi_tagname
	TextDrawFont(GameRoomBuyGunTextDraw[62], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[62], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[62], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[62], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[62], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[62], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[62], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[62], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[62], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[62], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[62], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[62], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[62], -2098);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[62], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[62], 1, 1);

	GameRoomBuyGunTextDraw[63] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Uzi_model
	TextDrawFont(GameRoomBuyGunTextDraw[63], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[63], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[63], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[63], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[63], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[63], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[63], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[63], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[63], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[63], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[63], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[63], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[63], 352);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[63], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[63], 1, 1);

	GameRoomBuyGunTextDraw[64] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//MP5_model
	TextDrawFont(GameRoomBuyGunTextDraw[64], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[64], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[64], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[64], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[64], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[64], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[64], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[64], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[64], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[64], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[64], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[64], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[64], 353);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[64], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[64], 1, 1);

	GameRoomBuyGunTextDraw[65] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Tec-9_model
	TextDrawFont(GameRoomBuyGunTextDraw[65], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[65], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[65], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[65], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[65], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[65], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[65], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[65], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[65], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[65], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[65], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[65], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[65], 372);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[65], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[65], 1, 1);

	GameRoomBuyGunTextDraw[66] = TextDrawCreate(251.000000, 238.000000, "1000");//Uzi_price
	TextDrawFont(GameRoomBuyGunTextDraw[66], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[66], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[66], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[66], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[66], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[66], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[66], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[66], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[66], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[66], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[66], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[66], 0);

	GameRoomBuyGunTextDraw[67] = TextDrawCreate(251.000000, 238.000000, "1001");//MP5_price
	TextDrawFont(GameRoomBuyGunTextDraw[67], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[67], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[67], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[67], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[67], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[67], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[67], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[67], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[67], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[67], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[67], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[67], 0);

	GameRoomBuyGunTextDraw[68] = TextDrawCreate(251.000000, 238.000000, "1002");//Tec-9_price
	TextDrawFont(GameRoomBuyGunTextDraw[68], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[68], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[68], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[68], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[68], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[68], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[68], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[68], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[68], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[68], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[68], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[68], 0);


	GameRoomBuyGunTextDraw[69] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");///AK-47_back
	TextDrawFont(GameRoomBuyGunTextDraw[69], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[69], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[69], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[69], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[69], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[69], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[69], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[69], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[69], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[69], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[69], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[69], 1);
	
	GameRoomBuyGunTextDraw[70] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//M4_back
	TextDrawFont(GameRoomBuyGunTextDraw[70], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[70], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[70], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[70], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[70], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[70], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[70], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[70], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[70], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[70], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[70], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[70], 1);

	GameRoomBuyGunTextDraw[71] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//Country Rifle_back
	TextDrawFont(GameRoomBuyGunTextDraw[71], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[71], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[71], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[71], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[71], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[71], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[71], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[71], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[71], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[71], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[71], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[71], 1);
	
	GameRoomBuyGunTextDraw[72] = TextDrawCreate(66.000000, 226.000000, "LD_SPAC:WHITE");//Sniper Rifle_back
	TextDrawFont(GameRoomBuyGunTextDraw[72], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[72], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[72], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[72], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[72], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[72], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[72], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[72], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[72], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[72], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[72], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[72], 1);

	GameRoomBuyGunTextDraw[73] = TextDrawCreate(112.000000, 138.000000, "AK-47");//AK-47_text
	TextDrawFont(GameRoomBuyGunTextDraw[73], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[73], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[73], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[73], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[73], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[73], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[73], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[73], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[73], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[73], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[73], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[73], 0);

	GameRoomBuyGunTextDraw[74] = TextDrawCreate(113.000000, 168.000000, "M4");//M4_text
	TextDrawFont(GameRoomBuyGunTextDraw[74], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[74], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[74], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[74], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[74], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[74], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[74], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[74], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[74], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[74], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[74], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[74], 0);
	
	GameRoomBuyGunTextDraw[75] = TextDrawCreate(113.000000, 198.000000, "Country Rifle");//Country Rifle_text
	TextDrawFont(GameRoomBuyGunTextDraw[75], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[75], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[75], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[75], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[75], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[75], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[75], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[75], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[75], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[75], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[75], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[75], 0);
	
	GameRoomBuyGunTextDraw[76] = TextDrawCreate(113.000000, 228.000000, "Sniper Rifle");//Sniper Rifle_text
	TextDrawFont(GameRoomBuyGunTextDraw[76], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[76], 0.275000, 2.049998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[76], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[76], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[76], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[76], 2);
	TextDrawColor(GameRoomBuyGunTextDraw[76], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[76], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[76], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[76], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[76], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[76], 0);

	GameRoomBuyGunTextDraw[77] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//BUQIANG_tagname
	TextDrawFont(GameRoomBuyGunTextDraw[77], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[77], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[77], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[77], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[77], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[77], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[77], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[77], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[77], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[77], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[77], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[77], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[77], -2100);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[77], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[77], 1, 1);

	GameRoomBuyGunTextDraw[78] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//AK-47_model
	TextDrawFont(GameRoomBuyGunTextDraw[78], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[78], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[78], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[78], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[78], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[78], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[78], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[78], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[78], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[78], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[78], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[78], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[78], 355);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[78], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[78], 1, 1);

	GameRoomBuyGunTextDraw[79] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//M4_model
	TextDrawFont(GameRoomBuyGunTextDraw[79], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[79], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[79], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[79], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[79], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[79], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[79], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[79], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[79], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[79], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[79], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[79], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[79], 356);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[79], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[79], 1, 1);
	
	GameRoomBuyGunTextDraw[80] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//Country Rifle_model
	TextDrawFont(GameRoomBuyGunTextDraw[80], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[80], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[80], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[80], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[80], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[80], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[80], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[80], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[80], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[80], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[80], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[80], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[80], 357);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[80], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[80], 1, 1);

	GameRoomBuyGunTextDraw[81] = TextDrawCreate(279.000000, 111.000000, "Nowy_TextDraw");//Sniper Rifle_model
	TextDrawFont(GameRoomBuyGunTextDraw[81], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[81], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[81], 160.000000, 160.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[81], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[81], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[81], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[81], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[81], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[81], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[81], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[81], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[81], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[81], 358);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[81], 0.000000, -6.000000, -180.000000, 2.209998);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[81], 1, 1);

	GameRoomBuyGunTextDraw[82] = TextDrawCreate(251.000000, 238.000000, "1000");//AK-47_price
	TextDrawFont(GameRoomBuyGunTextDraw[82], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[82], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[82], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[82], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[82], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[82], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[82], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[82], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[82], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[82], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[82], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[82], 0);

	GameRoomBuyGunTextDraw[83] = TextDrawCreate(251.000000, 238.000000, "1001");//M4_price
	TextDrawFont(GameRoomBuyGunTextDraw[83], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[83], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[83], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[83], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[83], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[83], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[83], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[83], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[83], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[83], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[83], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[83], 0);
	
	GameRoomBuyGunTextDraw[84] = TextDrawCreate(251.000000, 238.000000, "1002");//Country Rifle_price
	TextDrawFont(GameRoomBuyGunTextDraw[84], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[84], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[84], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[84], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[84], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[84], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[84], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[84], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[84], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[84], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[84], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[84], 0);
	
	GameRoomBuyGunTextDraw[85] = TextDrawCreate(251.000000, 238.000000, "1003");//Sniper Rifle_price
	TextDrawFont(GameRoomBuyGunTextDraw[85], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[85], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[85], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[85], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[85], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[85], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[85], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[85], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[85], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[85], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[85], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[85], 0);
	

	GameRoomBuyGunTextDraw[86] = TextDrawCreate(66.000000, 136.000000, "LD_SPAC:WHITE");///yanwudan_back
	TextDrawFont(GameRoomBuyGunTextDraw[86], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[86], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[86], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[86], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[86], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[86], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[86], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[86], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[86], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[86], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[86], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[86], 1);

	GameRoomBuyGunTextDraw[87] = TextDrawCreate(66.000000, 166.000000, "LD_SPAC:WHITE");//ranshaoping_back
	TextDrawFont(GameRoomBuyGunTextDraw[87], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[87], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[87], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[87], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[87], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[87], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[87], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[87], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[87], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[87], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[87], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[87], 1);

	GameRoomBuyGunTextDraw[88] = TextDrawCreate(66.000000, 196.000000, "LD_SPAC:WHITE");//gaobaoshoulei_back
	TextDrawFont(GameRoomBuyGunTextDraw[88], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[88], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[88], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[88], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[88], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[88], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[88], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[88], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[88], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[88], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[88], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[88], 1);

	GameRoomBuyGunTextDraw[89] = TextDrawCreate(66.000000, 226.000000, "LD_SPAC:WHITE");//fangbaodun_back
	TextDrawFont(GameRoomBuyGunTextDraw[89], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[89], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[89], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[89], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[89], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[89], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[89], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[89], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[89], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[89], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[89], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[89], 1);

	GameRoomBuyGunTextDraw[90] = TextDrawCreate(66.000000, 256.000000, "LD_SPAC:WHITE");//fangdanyi_back
	TextDrawFont(GameRoomBuyGunTextDraw[90], 4);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[90], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[90], 99.000000, 24.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[90], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[90], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[90], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[90], 90);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[90], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[90], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[90], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[90], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[90], 1);

	GameRoomBuyGunTextDraw[91] = TextDrawCreate(82.000000, 116.000000, "Nowy_TextDraw");//yanwudan_text
	TextDrawFont(GameRoomBuyGunTextDraw[91], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[91], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[91], 68.000000, 66.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[91], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[91], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[91], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[91], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[91], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[91], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[91], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[91], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[91], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[91], -2105);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[91], 90.000000, -180.000000, 0.000000, 0.210000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[91], 1, 1);

	GameRoomBuyGunTextDraw[92] = TextDrawCreate(82.000000, 146.000000, "Nowy_TextDraw");//ranshaoping_text
	TextDrawFont(GameRoomBuyGunTextDraw[92], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[92], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[92], 68.000000, 66.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[92], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[92], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[92], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[92], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[92], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[92], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[92], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[92], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[92], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[92], -2106);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[92], 90.000000, -180.000000, 0.000000, 0.210000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[92], 1, 1);

	GameRoomBuyGunTextDraw[93] = TextDrawCreate(82.000000, 176.000000, "Nowy_TextDraw");//gaobaoshoulei_text
	TextDrawFont(GameRoomBuyGunTextDraw[93], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[93], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[93], 68.000000, 66.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[93], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[93], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[93], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[93], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[93], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[93], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[93], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[93], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[93], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[93], -2107);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[93], 90.000000, -180.000000, 0.000000, 0.210000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[93], 1, 1);

	GameRoomBuyGunTextDraw[94] = TextDrawCreate(82.000000, 206.000000, "Nowy_TextDraw");//fangbaodun_text
	TextDrawFont(GameRoomBuyGunTextDraw[94], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[94], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[94], 68.000000, 66.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[94], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[94], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[94], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[94], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[94], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[94], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[94], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[94], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[94], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[94], -2108);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[94], 90.000000, -180.000000, 0.000000, 0.210000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[94], 1, 1);
	
	GameRoomBuyGunTextDraw[95] = TextDrawCreate(82.000000, 236.000000, "Nowy_TextDraw");//fangdanyi_text
	TextDrawFont(GameRoomBuyGunTextDraw[95], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[95], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[95], 68.000000, 66.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[95], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[95], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[95], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[95], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[95], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[95], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[95], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[95], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[95], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[95], -2109);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[95], 90.000000, -180.000000, 0.000000, 0.210000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[95], 1, 1);

	GameRoomBuyGunTextDraw[96] = TextDrawCreate(57.000000, 18.000000, "Nowy_TextDraw");//zhuangbei_tagname
	TextDrawFont(GameRoomBuyGunTextDraw[96], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[96], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[96], 130.000000, 130.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[96], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[96], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[96], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[96], -65281);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[96], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[96], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[96], 1);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[96], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[96], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[96], -2102);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[96], -90.000000, 0.000000, -180.000000, 0.209995);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[96], 1, 1);

	GameRoomBuyGunTextDraw[97] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//yanwudan_model
	TextDrawFont(GameRoomBuyGunTextDraw[97], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[97], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[97], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[97], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[97], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[97], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[97], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[97], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[97], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[97], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[97], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[97], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[97], 343);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[97], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[97], 1, 1);

	GameRoomBuyGunTextDraw[98] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//ranshaoping_model
	TextDrawFont(GameRoomBuyGunTextDraw[98], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[98], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[98], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[98], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[98], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[98], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[98], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[98], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[98], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[98], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[98], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[98], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[98], 344);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[98], 0.000000, 0.000000, 180.000000, 0.800000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[98], 1, 1);

	GameRoomBuyGunTextDraw[99] = TextDrawCreate(244.000000, 108.000000, "Nowy_TextDraw");//gaobaoshoulei_model
	TextDrawFont(GameRoomBuyGunTextDraw[99], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[99], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[99], 190.000000, 190.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[99], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[99], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[99], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[99], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[99], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[99], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[99], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[99], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[99], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[99], 342);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[99], 0.000000, 0.000000, 180.000000, 0.750000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[99], 1, 1);

	GameRoomBuyGunTextDraw[100] = TextDrawCreate(312.000000, 136.000000, "Nowy_TextDraw");//fangbaodun_model
	TextDrawFont(GameRoomBuyGunTextDraw[100], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[100], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[100], 100.000000, 100.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[100], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[100], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[100], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[100], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[100], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[100], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[100], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[100], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[100], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[100], 18637);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[100], -90.000000, 0.000000, -180.000000, 0.849999);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[100], 1, 1);

	GameRoomBuyGunTextDraw[101] = TextDrawCreate(332.000000, 144.000000, "Nowy_TextDraw");//fangdanyi_model
	TextDrawFont(GameRoomBuyGunTextDraw[101], 5);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[101], 0.600000, 2.000000);
	TextDrawTextSize(GameRoomBuyGunTextDraw[101], 100.000000, 100.000000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[101], 1);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[101], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[101], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[101], -1);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[101], 0);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[101], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[101], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[101], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[101], 0);
	TextDrawSetPreviewModel(GameRoomBuyGunTextDraw[101], 19515);
	TextDrawSetPreviewRot(GameRoomBuyGunTextDraw[101], 0.000000, -90.000000, 180.000000, 0.730000);
	TextDrawSetPreviewVehCol(GameRoomBuyGunTextDraw[101], 1, 1);

	GameRoomBuyGunTextDraw[102] = TextDrawCreate(251.000000, 238.000000, "1000");//yanwudan_price
	TextDrawFont(GameRoomBuyGunTextDraw[102], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[102], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[102], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[102], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[102], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[102], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[102], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[102], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[102], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[102], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[102], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[102], 0);

	GameRoomBuyGunTextDraw[103] = TextDrawCreate(251.000000, 238.000000, "1001");//ranshaoping_price
	TextDrawFont(GameRoomBuyGunTextDraw[103], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[103], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[103], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[103], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[103], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[103], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[103], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[103], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[103], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[103], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[103], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[103], 0);

	GameRoomBuyGunTextDraw[104] = TextDrawCreate(251.000000, 238.000000, "1002");//gaobaosoulei_price
	TextDrawFont(GameRoomBuyGunTextDraw[104], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[104], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[104], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[104], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[104], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[104], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[104], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[104], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[104], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[104], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[104], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[104], 0);

	GameRoomBuyGunTextDraw[105] = TextDrawCreate(251.000000, 238.000000, "1003");//fangbaodun_price
	TextDrawFont(GameRoomBuyGunTextDraw[105], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[105], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[105], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[105], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[105], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[105], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[105], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[105], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[105], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[105], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[105], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[105], 0);
	
	GameRoomBuyGunTextDraw[106] = TextDrawCreate(251.000000, 238.000000, "1004");//fangbaodun_price
	TextDrawFont(GameRoomBuyGunTextDraw[106], 2);
	TextDrawLetterSize(GameRoomBuyGunTextDraw[106], 0.258333, 1.599998);
	TextDrawTextSize(GameRoomBuyGunTextDraw[106], 400.000000, 164.500000);
	TextDrawSetOutline(GameRoomBuyGunTextDraw[106], 0);
	TextDrawSetShadow(GameRoomBuyGunTextDraw[106], 0);
	TextDrawAlignment(GameRoomBuyGunTextDraw[106], 1);
	TextDrawColor(GameRoomBuyGunTextDraw[106], 1097458175);
	TextDrawBackgroundColor(GameRoomBuyGunTextDraw[106], 255);
	TextDrawBoxColor(GameRoomBuyGunTextDraw[106], 50);
	TextDrawUseBox(GameRoomBuyGunTextDraw[106], 0);
	TextDrawSetProportional(GameRoomBuyGunTextDraw[106], 1);
	TextDrawSetSelectable(GameRoomBuyGunTextDraw[106], 0);
	return 1;
}
N::ShowPlayerBuyGunMain(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
	forex(i,26)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
	GameRoomBuyGunShow[playerid]=true;
	GameRoomWeaponType[playerid]=0;
	GameRoomWeaponIndex[playerid]=0;
	SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::HidePlayerBuyGunMain(playerid)
{
	forex(i,sizeof(GameRoomBuyGunTextDraw))TextDrawHideForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
	GameRoomBuyGunShow[playerid]=false;
	GameRoomWeaponType[playerid]=0;
	GameRoomWeaponIndex[playerid]=0;
	SetHealthBarVisibleEx(playerid, true);
	return 1;
}
N::ShowPlayerBuyPistol(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[0]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[1]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[42]);
    loop(i,26,33)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
    GameRoomBuyGunShow[playerid]=true;
    GameRoomWeaponType[playerid]=1;
    GameRoomWeaponIndex[playerid]=0;
    SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::ShowPlayerBuyShotgun(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[0]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[1]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[42]);
    loop(i,43,50)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
    GameRoomBuyGunShow[playerid]=true;
    GameRoomWeaponType[playerid]=2;
    GameRoomWeaponIndex[playerid]=0;
    SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::ShowPlayerBuyUzi(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[0]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[1]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[42]);
    loop(i,56,63)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
    GameRoomBuyGunShow[playerid]=true;
    GameRoomWeaponType[playerid]=3;
    GameRoomWeaponIndex[playerid]=0;
    SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::ShowPlayerBuyRifle(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[0]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[1]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[42]);
    loop(i,69,78)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
    GameRoomBuyGunShow[playerid]=true;
    GameRoomWeaponType[playerid]=4;
    GameRoomWeaponIndex[playerid]=0;
    SetHealthBarVisibleEx(playerid, false);
	return 1;
}
N::ShowPlayerBuyEquipment(playerid)
{
    if(GameRoomBuyGunShow[playerid]==true)HidePlayerBuyGunMain(playerid);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[0]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[1]);
    TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[42]);
    loop(i,86,97)TextDrawShowForPlayer(playerid,GameRoomBuyGunTextDraw[i]);
    GameRoomBuyGunShow[playerid]=true;
    GameRoomWeaponType[playerid]=6;
    GameRoomWeaponIndex[playerid]=0;
    SetHealthBarVisibleEx(playerid, false);
	return 1;
}
