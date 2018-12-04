N::LoadingInterFaceInt()
{
	LoadingInterFaceBackGround = TextDrawCreate(320.000000, -1.000000, "~n~");
	TextDrawFont(LoadingInterFaceBackGround, 1);
	TextDrawLetterSize(LoadingInterFaceBackGround, 0.600000, 53.599998);
	TextDrawTextSize(LoadingInterFaceBackGround, 400.000000, 810.500000);
	TextDrawSetOutline(LoadingInterFaceBackGround, 1);
	TextDrawSetShadow(LoadingInterFaceBackGround, 0);
	TextDrawAlignment(LoadingInterFaceBackGround, 2);
	TextDrawColor(LoadingInterFaceBackGround, -1);
	TextDrawBackgroundColor(LoadingInterFaceBackGround, 255);
	TextDrawBoxColor(LoadingInterFaceBackGround, 255);
	TextDrawUseBox(LoadingInterFaceBackGround, 1);
	TextDrawSetProportional(LoadingInterFaceBackGround, 1);
	TextDrawSetSelectable(LoadingInterFaceBackGround, 1);

	LoadingInterFaceText = TextDrawCreate(200.000000, 42.000000, "Nowy_TextDraw");
	TextDrawFont(LoadingInterFaceText, 5);
	TextDrawLetterSize(LoadingInterFaceText, 0.600000, 2.000000);
	TextDrawTextSize(LoadingInterFaceText, 261.500000, 339.500000);
	TextDrawSetOutline(LoadingInterFaceText, 1);
	TextDrawSetShadow(LoadingInterFaceText, 0);
	TextDrawAlignment(LoadingInterFaceText, 1);
	TextDrawColor(LoadingInterFaceText, -1);
	TextDrawBackgroundColor(LoadingInterFaceText, 0);
	TextDrawBoxColor(LoadingInterFaceText, 1296911666);
	TextDrawUseBox(LoadingInterFaceText, 1);
	TextDrawSetProportional(LoadingInterFaceText, 1);
	TextDrawSetSelectable(LoadingInterFaceText, 0);
	TextDrawSetPreviewModel(LoadingInterFaceText, -2030);
	TextDrawSetPreviewRot(LoadingInterFaceText, -88.000000, 0.000000, -180.000000, 0.139999);
	TextDrawSetPreviewVehCol(LoadingInterFaceText, 1, 1);
	return 1;
}
