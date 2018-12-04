N::ShowPlayerShopBackGround(playerid)
{
	forex(i,MAX_SHOPTEXTDRAWS)TextDrawShowForPlayer(playerid,ShopBackTextDraw[i]);
	return 1;
}
N::HidePlayerShopBackGround(playerid)
{
	forex(i,MAX_SHOPTEXTDRAWS)TextDrawHideForPlayer(playerid,ShopBackTextDraw[i]);
	return 1;
}
N::ShopBackGroundInt()
{
	ShopBackTextDraw[0] = TextDrawCreate(320.000000, 1.000000, "~n~");//商店背景
	TextDrawFont(ShopBackTextDraw[0], 1);
	TextDrawLetterSize(ShopBackTextDraw[0], 0.600000, 51.000000);
	TextDrawTextSize(ShopBackTextDraw[0], 400.000000, 658.000000);
	TextDrawSetOutline(ShopBackTextDraw[0], 1);
	TextDrawSetShadow(ShopBackTextDraw[0], 0);
	TextDrawAlignment(ShopBackTextDraw[0], 2);
	TextDrawColor(ShopBackTextDraw[0], 255);
	TextDrawBackgroundColor(ShopBackTextDraw[0], 255);
	TextDrawBoxColor(ShopBackTextDraw[0], 255);
	TextDrawUseBox(ShopBackTextDraw[0], 1);
	TextDrawSetProportional(ShopBackTextDraw[0], 1);
	TextDrawSetSelectable(ShopBackTextDraw[0], 0);
	
	ShopBackTextDraw[1] = TextDrawCreate(320.000000, 6.000000, "~n~");//商店标题背景
	TextDrawFont(ShopBackTextDraw[1], 1);
	TextDrawLetterSize(ShopBackTextDraw[1], 0.600000, 5.549993);
	TextDrawTextSize(ShopBackTextDraw[1], 399.000000, 630.500000);
	TextDrawSetOutline(ShopBackTextDraw[1], 1);
	TextDrawSetShadow(ShopBackTextDraw[1], 0);
	TextDrawAlignment(ShopBackTextDraw[1], 2);
	TextDrawColor(ShopBackTextDraw[1], -3841);
	TextDrawBackgroundColor(ShopBackTextDraw[1], 255);
	TextDrawBoxColor(ShopBackTextDraw[1], 1747094527);
	TextDrawUseBox(ShopBackTextDraw[1], 1);
	TextDrawSetProportional(ShopBackTextDraw[1], 1);
	TextDrawSetSelectable(ShopBackTextDraw[1], 0);

	ShopBackTextDraw[2] = TextDrawCreate(617.000000, 60.000000, "ld_beat:up");//上页按钮
	TextDrawFont(ShopBackTextDraw[2], 4);
	TextDrawLetterSize(ShopBackTextDraw[2], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[2], 21.500000, 20.000000);
	TextDrawSetOutline(ShopBackTextDraw[2], 1);
	TextDrawSetShadow(ShopBackTextDraw[2], 0);
	TextDrawAlignment(ShopBackTextDraw[2], 1);
	TextDrawColor(ShopBackTextDraw[2], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[2], 255);
	TextDrawBoxColor(ShopBackTextDraw[2], 50);
	TextDrawUseBox(ShopBackTextDraw[2], 1);
	TextDrawSetProportional(ShopBackTextDraw[2], 1);
	TextDrawSetSelectable(ShopBackTextDraw[2], 1);

	ShopBackTextDraw[3] = TextDrawCreate(617.000000, 388.000000, "ld_beat:down");//下页按钮
	TextDrawFont(ShopBackTextDraw[3], 4);
	TextDrawLetterSize(ShopBackTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[3], 21.500000, 20.000000);
	TextDrawSetOutline(ShopBackTextDraw[3], 1);
	TextDrawSetShadow(ShopBackTextDraw[3], 0);
	TextDrawAlignment(ShopBackTextDraw[3], 1);
	TextDrawColor(ShopBackTextDraw[3], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[3], 255);
	TextDrawBoxColor(ShopBackTextDraw[3], 50);
	TextDrawUseBox(ShopBackTextDraw[3], 1);
	TextDrawSetProportional(ShopBackTextDraw[3], 1);
	TextDrawSetSelectable(ShopBackTextDraw[3], 1);

	ShopBackTextDraw[4] = TextDrawCreate(245.000000, -53.000000, "Nowy_TextDraw");//游戏商城标题文字
	TextDrawFont(ShopBackTextDraw[4], 5);
	TextDrawLetterSize(ShopBackTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[4], 132.500000, 166.000000);
	TextDrawSetOutline(ShopBackTextDraw[4], 1);
	TextDrawSetShadow(ShopBackTextDraw[4], 0);
	TextDrawAlignment(ShopBackTextDraw[4], 1);
	TextDrawColor(ShopBackTextDraw[4], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[4], 0);
	TextDrawBoxColor(ShopBackTextDraw[4], 50);
	TextDrawUseBox(ShopBackTextDraw[4], 1);
	TextDrawSetProportional(ShopBackTextDraw[4], 1);
	TextDrawSetSelectable(ShopBackTextDraw[4], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[4], -2044);
	TextDrawSetPreviewRot(ShopBackTextDraw[4], 90.000000, -180.000000, 0.000000, 0.200000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[4], 1, 1);

	ShopBackTextDraw[5] = TextDrawCreate(4.000000, 410.000000, "LD_SPAC:WHITE");//金额面板
	TextDrawFont(ShopBackTextDraw[5], 4);
	TextDrawLetterSize(ShopBackTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[5], 633.000000, 33.500000);
	TextDrawSetOutline(ShopBackTextDraw[5], 1);
	TextDrawSetShadow(ShopBackTextDraw[5], 0);
	TextDrawAlignment(ShopBackTextDraw[5], 1);
	TextDrawColor(ShopBackTextDraw[5], 1097458110);
	TextDrawBackgroundColor(ShopBackTextDraw[5], 255);
	TextDrawBoxColor(ShopBackTextDraw[5], 65330);
	TextDrawUseBox(ShopBackTextDraw[5], 1);
	TextDrawSetProportional(ShopBackTextDraw[5], 1);
	TextDrawSetSelectable(ShopBackTextDraw[5], 0);

	ShopBackTextDraw[6] = TextDrawCreate(6.000000, 387.000000, "Nowy_TextDraw");//我的C币
	TextDrawFont(ShopBackTextDraw[6], 5);
	TextDrawLetterSize(ShopBackTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[6], 57.500000, 80.000000);
	TextDrawSetOutline(ShopBackTextDraw[6], 1);
	TextDrawSetShadow(ShopBackTextDraw[6], 0);
	TextDrawAlignment(ShopBackTextDraw[6], 1);
	TextDrawColor(ShopBackTextDraw[6], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[6], 0);
	TextDrawBoxColor(ShopBackTextDraw[6], 50);
	TextDrawUseBox(ShopBackTextDraw[6], 1);
	TextDrawSetProportional(ShopBackTextDraw[6], 1);
	TextDrawSetSelectable(ShopBackTextDraw[6], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[6], -2042);
	TextDrawSetPreviewRot(ShopBackTextDraw[6], 90.000000, -180.000000, 0.000000, 0.200000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[6], 1, 1);

	ShopBackTextDraw[7] = TextDrawCreate(204.000000, 387.000000, "Nowy_TextDraw");//总金额
	TextDrawFont(ShopBackTextDraw[7], 5);
	TextDrawLetterSize(ShopBackTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[7], 57.500000, 80.000000);
	TextDrawSetOutline(ShopBackTextDraw[7], 1);
	TextDrawSetShadow(ShopBackTextDraw[7], 0);
	TextDrawAlignment(ShopBackTextDraw[7], 1);
	TextDrawColor(ShopBackTextDraw[7], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[7], 0);
	TextDrawBoxColor(ShopBackTextDraw[7], 50);
	TextDrawUseBox(ShopBackTextDraw[7], 1);
	TextDrawSetProportional(ShopBackTextDraw[7], 1);
	TextDrawSetSelectable(ShopBackTextDraw[7], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[7], -2054);
	TextDrawSetPreviewRot(ShopBackTextDraw[7], 90.000000, -180.000000, 0.000000, 0.200000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[7], 1, 1);

	ShopBackTextDraw[8] = TextDrawCreate(484.000000, 414.000000, "ld_otb2:butnAo");//购买按钮
	TextDrawFont(ShopBackTextDraw[8], 4);
	TextDrawLetterSize(ShopBackTextDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[8], 71.000000, 32.500000);
	TextDrawSetOutline(ShopBackTextDraw[8], 1);
	TextDrawSetShadow(ShopBackTextDraw[8], 0);
	TextDrawAlignment(ShopBackTextDraw[8], 1);
	TextDrawColor(ShopBackTextDraw[8], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[8], 0);
	TextDrawBoxColor(ShopBackTextDraw[8], 50);
	TextDrawUseBox(ShopBackTextDraw[8], 1);
	TextDrawSetProportional(ShopBackTextDraw[8], 1);
	TextDrawSetSelectable(ShopBackTextDraw[8], 1);

	ShopBackTextDraw[9] = TextDrawCreate(495.000000, 401.000000, "Nowy_TextDraw");//购买文字
	TextDrawFont(ShopBackTextDraw[9], 5);
	TextDrawLetterSize(ShopBackTextDraw[9], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[9], 50.000000, 50.000000);
	TextDrawSetOutline(ShopBackTextDraw[9], 1);
	TextDrawSetShadow(ShopBackTextDraw[9], 0);
	TextDrawAlignment(ShopBackTextDraw[9], 1);
	TextDrawColor(ShopBackTextDraw[9], -16776961);
	TextDrawBackgroundColor(ShopBackTextDraw[9], 0);
	TextDrawBoxColor(ShopBackTextDraw[9], 50);
	TextDrawUseBox(ShopBackTextDraw[9], 1);
	TextDrawSetProportional(ShopBackTextDraw[9], 1);
	TextDrawSetSelectable(ShopBackTextDraw[9], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[9], -2043);
	TextDrawSetPreviewRot(ShopBackTextDraw[9], 90.000000, -180.000000, 0.000000, 0.230000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[9], 1, 1);

	ShopBackTextDraw[10] = TextDrawCreate(561.000000, 414.000000, "ld_otb2:butnAo");//返回大厅按钮
	TextDrawFont(ShopBackTextDraw[10], 4);
	TextDrawLetterSize(ShopBackTextDraw[10], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[10], 71.000000, 32.500000);
	TextDrawSetOutline(ShopBackTextDraw[10], 1);
	TextDrawSetShadow(ShopBackTextDraw[10], 0);
	TextDrawAlignment(ShopBackTextDraw[10], 1);
	TextDrawColor(ShopBackTextDraw[10], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[10], 0);
	TextDrawBoxColor(ShopBackTextDraw[10], 50);
	TextDrawUseBox(ShopBackTextDraw[10], 1);
	TextDrawSetProportional(ShopBackTextDraw[10], 1);
	TextDrawSetSelectable(ShopBackTextDraw[10], 1);

	ShopBackTextDraw[11] = TextDrawCreate(571.000000, 401.000000, "Nowy_TextDraw");//返回大厅文字
	TextDrawFont(ShopBackTextDraw[11], 5);
	TextDrawLetterSize(ShopBackTextDraw[11], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[11], 50.000000, 50.000000);
	TextDrawSetOutline(ShopBackTextDraw[11], 1);
	TextDrawSetShadow(ShopBackTextDraw[11], 0);
	TextDrawAlignment(ShopBackTextDraw[11], 1);
	TextDrawColor(ShopBackTextDraw[11], 255);
	TextDrawBackgroundColor(ShopBackTextDraw[11], 0);
	TextDrawBoxColor(ShopBackTextDraw[11], 50);
	TextDrawUseBox(ShopBackTextDraw[11], 1);
	TextDrawSetProportional(ShopBackTextDraw[11], 1);
	TextDrawSetSelectable(ShopBackTextDraw[11], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[11], -2045);
	TextDrawSetPreviewRot(ShopBackTextDraw[11], 90.000000, -180.000000, 0.000000, 0.230000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[11], 1, 1);
	
	ShopBackTextDraw[12] = TextDrawCreate(404.000000, 414.000000, "ld_otb2:butnAo");//清空购物车按钮
	TextDrawFont(ShopBackTextDraw[12], 4);
	TextDrawLetterSize(ShopBackTextDraw[12], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[12], 71.000000, 32.500000);
	TextDrawSetOutline(ShopBackTextDraw[12], 1);
	TextDrawSetShadow(ShopBackTextDraw[12], 0);
	TextDrawAlignment(ShopBackTextDraw[12], 1);
	TextDrawColor(ShopBackTextDraw[12], -1);
	TextDrawBackgroundColor(ShopBackTextDraw[12], 0);
	TextDrawBoxColor(ShopBackTextDraw[12], 50);
	TextDrawUseBox(ShopBackTextDraw[12], 1);
	TextDrawSetProportional(ShopBackTextDraw[12], 1);
	TextDrawSetSelectable(ShopBackTextDraw[12], 1);
	
	ShopBackTextDraw[13] = TextDrawCreate(412.000000, 398.000000, "Nowy_TextDraw");//清空购物车文字
	TextDrawFont(ShopBackTextDraw[13], 5);
	TextDrawLetterSize(ShopBackTextDraw[13], 0.600000, 2.000000);
	TextDrawTextSize(ShopBackTextDraw[13], 55.000000, 55.000000);
	TextDrawSetOutline(ShopBackTextDraw[13], 1);
	TextDrawSetShadow(ShopBackTextDraw[13], 0);
	TextDrawAlignment(ShopBackTextDraw[13], 1);
	TextDrawColor(ShopBackTextDraw[13], -16776961);
	TextDrawBackgroundColor(ShopBackTextDraw[13], 0);
	TextDrawBoxColor(ShopBackTextDraw[13], 50);
	TextDrawUseBox(ShopBackTextDraw[13], 1);
	TextDrawSetProportional(ShopBackTextDraw[13], 1);
	TextDrawSetSelectable(ShopBackTextDraw[13], 0);
	TextDrawSetPreviewModel(ShopBackTextDraw[13], -2063);
	TextDrawSetPreviewRot(ShopBackTextDraw[13], 90.000000, -180.000000, 0.000000, 0.250000);
	TextDrawSetPreviewVehCol(ShopBackTextDraw[13], 1, 1);

    return 1;
}
/******************************************************************************************************/
N::GetTypeShopAmounts(type)
{
	new Amount=0;
	if(type==NONE)
	{
	    forex(i,sizeof(Item))/*if(Item[i][_Stock]>0)*/Amount++;
	}
	else
	{
		forex(i,sizeof(Item))
		{
			if(Item[i][_Type]==type)
			{
			    /*if(Item[i][_Stock]>0)*/Amount++;
			}
		}
	}
	return Amount;
}
/******************************************************************************************************/
stock PlayerText:CreatePlayerShopSlider(playerid,pages,Type)//进度条
{
    new ShopAmounts=GetTypeShopAmounts(Type);
    if(ShopAmounts<=0)ShopAmounts=1;
    new Float:BarTextSize=floatdiv(307,floatround(floatdiv(ShopAmounts,MAX_SHOP_SHOW_LIST),floatround_ceil));
	if(pages<=0)pages=0;
	else pages--;
    SetSVarString("CPTD","CreatePlayerShopSlider");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, 617.000000, 80.000000+floatmul(pages,BarTextSize), "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 20.000000, BarTextSize);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListPrice(playerid, Float:Xpos, Float:Ypos,Price[])
{
    SetSVarString("CPTD","CreatePlayerShopListPrice");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos,Price);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.174998, 1.299998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListStock(playerid, Float:Xpos, Float:Ypos,Stock[])
{
    SetSVarString("CPTD","CreatePlayerShopListStock");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos,Stock);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.174998, 1.299998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListAvatar(playerid, Float:Xpos, Float:Ypos,Model)
{
    SetSVarString("CPTD","CreatePlayerShopListAvatar");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 71.000000, 102.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 35839);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 35584);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 35634);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 90.000000, -180.000000, 0.000000, 0.309998);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListBA(playerid, Float:Xpos, Float:Ypos,Amount[])
{
    SetSVarString("CPTD","CreatePlayerShopListBA");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos,Amount);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.174998, 1.299998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 42.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListJia(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerShopListJia");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "+");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 1);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.341664, 1.399999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 402.500000, 48.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListJian(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerShopListJian");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "-");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 1);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.524999, 1.149999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 402.500000, 48.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListPST(playerid, Float:Xpos, Float:Ypos,Model)
{
    SetSVarString("CPTD","CreatePlayerShopListPST");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 20.000000, 20.000000);
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
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 90.000000, 180.000000, 0.000000, 0.099999);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListModel(playerid, Float:Xpos, Float:Ypos,Model)
{
    SetSVarString("CPTD","CreatePlayerShopListModel");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 93.500000, 80.000000);
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
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -10.000000, 0.000000, -20.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListBg(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerShopListBg");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 140.000000, 83.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 1687547391);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopTitle(playerid, Float:Xpos, Float:Ypos,Color)
{
    SetSVarString("CPTD","CreatePlayerShopTitle");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 34.500000, 87.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, Color);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopTitleText(playerid, Float:Xpos, Float:Ypos,Color,Model)
{
    SetSVarString("CPTD","CreatePlayerShopTitleText");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 148.500000, 124.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, Color);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, 90.000000, 180.000000, 0.000000, 0.310000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopBBG(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerShopBBG");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 577.500000, 351.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -168436546);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, -1378294222);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopListJJB(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerShopListJJB");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "ld_pool:ball");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 10.000000, 10.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 16777215);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, -16776961);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, -16777166);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopCash(playerid, Float:Xpos, Float:Ypos,Amount[])
{
    SetSVarString("CPTD","CreatePlayerShopCash");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Amount);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.445832, 2.599997);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -16776961);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerShopBill(playerid, Float:Xpos, Float:Ypos,Amount[])
{
    SetSVarString("CPTD","CreatePlayerShopBill");
    new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Amount);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.445832, 2.599997);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -16776961);
	PlayerTextDrawBackgroundColor(playerid,PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
/******************************************************************************************************/
N::RestPlayerShopDraws(playerid,bool:destroy,bool:first)//初始化玩家列表DRAWS
{
	forex(i,MAX_SHOP_BOX_ITEMS)
	{
	    PlayerShopPrevieBox[playerid][i]=NONE;
	    format(PlayerShopPrevieBoxKey[playerid][i],64,"");
	    PlayerShopPrevieBoxDrawID[playerid][i]=NONE;
		if(first==true)PlayerShopItemAmounts[playerid][i]=0;
	}
	PlayerShopPrevieCount[playerid]=NONE;
	PlayerShopPreviePage[playerid]=NONE;
	PlayerShopPrevieRate[playerid]=NONE;
	PlayerShopClickID[playerid]=NONE;
	PlayerShopType[playerid]=SHOP_TYPE_ALL;
	
	if(destroy==true)
	{
		forex(i,MAX_SHOP_SHOW_LIST)
		{
		    SetSVarString("PTDD","PlayerShopListBg");
			if(PlayerShopListBg[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListBg[playerid][i]);
            SetSVarString("PTDD","PlayerShopListModel");
			if(PlayerShopListModel[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListModel[playerid][i]);
            SetSVarString("PTDD","PlayerShopListPriceText");
			if(PlayerShopListPriceText[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListPriceText[playerid][i]);
            SetSVarString("PTDD","PlayerShopListStockText");
			if(PlayerShopListStockText[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListStockText[playerid][i]);
            SetSVarString("PTDD","PlayerShopListJia");
			if(PlayerShopListJia[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListJia[playerid][i]);
            SetSVarString("PTDD","PlayerShopListJiaBack");
			if(PlayerShopListJiaBack[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListJiaBack[playerid][i]);
            SetSVarString("PTDD","PlayerShopListJian");
			if(PlayerShopListJian[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListJian[playerid][i]);
            SetSVarString("PTDD","PlayerShopListJianBack");
			if(PlayerShopListJianBack[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListJianBack[playerid][i]);
            SetSVarString("PTDD","PlayerShopListBuyAmount");
			if(PlayerShopListBuyAmount[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListBuyAmount[playerid][i]);
            SetSVarString("PTDD","PlayerShopListPrice");
			if(PlayerShopListPrice[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListPrice[playerid][i]);
            SetSVarString("PTDD","PlayerShopListStock");
			if(PlayerShopListStock[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListStock[playerid][i]);
            SetSVarString("PTDD","PlayerShopListAvatar");
			if(PlayerShopListAvatar[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopListAvatar[playerid][i]);
		}
		SetSVarString("PTDD","PlayerShopSlider");
		if(PlayerShopSlider[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopSlider[playerid]);
        SetSVarString("PTDD","PlayerShopBuyBackGround");
		if(PlayerShopBuyBackGround[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopBuyBackGround[playerid]);
        SetSVarString("PTDD","PlayerShopCash");
		if(PlayerShopCash[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopCash[playerid]);
        SetSVarString("PTDD","PlayerShopBill");
		if(PlayerShopBill[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerShopBill[playerid]);
       	forex(i,4)
		{
		   	if(PlayerShopTitle[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)
			{
			   	SetSVarString("PTDD","PlayerShopTitle");
			    PlayerTextDrawDestroy(playerid,PlayerShopTitle[playerid][i]);
            }
		   	if(PlayerShopTitleText[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)
		   	{
		   		SetSVarString("PTDD","PlayerShopTitleText");
			   PlayerTextDrawDestroy(playerid,PlayerShopTitleText[playerid][i]);
            }
        }
	}
	forex(i,MAX_SHOP_SHOW_LIST)
	{
		PlayerShopListBg[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListModel[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListPriceText[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListStockText[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListJia[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListJiaBack[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListJian[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListJianBack[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListBuyAmount[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListPrice[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListStock[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopListAvatar[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
	}
	PlayerShopSlider[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerShopBuyBackGround[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerShopCash[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerShopBill[playerid]=PlayerText:INVALID_TEXT_DRAW;
	forex(i,4)
	{
		PlayerShopTitle[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerShopTitleText[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
    }
	PlayerShopListShow[playerid]=false;
	return 1;
}
N::RefreshPlayerShopPage(playerid,type,pages)return CreateShopPage(playerid,type,false,pages);
N::CreateShopPage(playerid,type,bool:first,pages)
{
    RestPlayerShopDraws(playerid,true,first);
	new index=0,PlayerShopAmout=0;
    PlayerShopPrevieRate[playerid]=0;
    PlayerShopPrevieCount[playerid]=1;
    PlayerShopClickID[playerid]=NONE;
    PlayerShopType[playerid]=type;
    new	Project_ID[MAX_SHOP_BOX_ITEMS],Top_Info[MAX_SHOP_BOX_ITEMS],Current_TopLine=0;
	switch(type)
	{
	    case SHOP_TYPE_ALL:
	    {
	        Current_TopLine=GetTypeShopAmounts(NONE);
			forex(i,sizeof(Item))
			{
			    if(Item[i][_Stock]>0)HighestTopList(i,Item[i][_Type],Project_ID, Top_Info, Current_TopLine);
		    }

	    }
	    case SHOP_TYPE_SKIN:
	    {
	        Current_TopLine=GetTypeShopAmounts(ITEM_TYPE_SKIN);
			forex(i,sizeof(Item))
			{
			    if(Item[i][_Stock]>0)HighestTopList(i,Item[i][_Stock],Project_ID, Top_Info, Current_TopLine);
		    }
	    }
	    case SHOP_TYPE_ATTACH:
	    {
	        Current_TopLine=GetTypeShopAmounts(ITEM_TYPE_ATTACH);
			forex(i,sizeof(Item))
			{
			    if(Item[i][_Stock]>0)HighestTopList(i,Item[i][_Stock],Project_ID, Top_Info, Current_TopLine);
		    }
	    }
	    case SHOP_TYPE_FUNC:
	    {
	        Current_TopLine=GetTypeShopAmounts(ITEM_TYPE_FUNC);
			forex(i,sizeof(Item))
			{
			    if(Item[i][_Stock]>0)HighestTopList(i,Item[i][_Stock],Project_ID, Top_Info, Current_TopLine);
		    }
	    }
	}
    forex(i,Current_TopLine)
	{
	    if(PlayerShopAmout<MAX_SHOP_BOX_ITEMS-2)
	    {
			PlayerShopPrevieBox[playerid][PlayerShopPrevieCount[playerid]]=Project_ID[i];
			format(PlayerShopPrevieBoxKey[playerid][PlayerShopPrevieCount[playerid]],64,"");
			format(PlayerShopPrevieBoxKey[playerid][PlayerShopPrevieCount[playerid]],64,Item[Project_ID[i]][_Key]);
   			PlayerShopPrevieCount[playerid]++;
   			PlayerShopAmout++;
	    }
	}
	
    if(type==SHOP_TYPE_ALL)PlayerShopTitle[playerid][0]=CreatePlayerShopTitle(playerid,4.000000, 58.000000,-168436546);
    else PlayerShopTitle[playerid][0]=CreatePlayerShopTitle(playerid,4.000000, 58.000000,1296911806);
    if(type==SHOP_TYPE_SKIN)PlayerShopTitle[playerid][1]=CreatePlayerShopTitle(playerid,4.000000, 146.000000,-168436546);
	else PlayerShopTitle[playerid][1]=CreatePlayerShopTitle(playerid,4.000000, 146.000000,1296911806);
    if(type==SHOP_TYPE_ATTACH)PlayerShopTitle[playerid][2]=CreatePlayerShopTitle(playerid,4.000000, 234.000000,-168436546);
	else PlayerShopTitle[playerid][2]=CreatePlayerShopTitle(playerid,4.000000, 234.000000,1296911806);
    if(type==SHOP_TYPE_FUNC)PlayerShopTitle[playerid][3]=CreatePlayerShopTitle(playerid,4.000000, 322.000000,-168436546);
	else PlayerShopTitle[playerid][3]=CreatePlayerShopTitle(playerid,4.000000, 322.000000,1296911806);
	PlayerShopBuyBackGround[playerid]=CreatePlayerShopBBG(playerid,39.000000, 58.000000);

    if(type==SHOP_TYPE_ALL)PlayerShopTitleText[playerid][0]=CreatePlayerShopTitleText(playerid,-65.000000, 22.000000,35839,-2055);
    else PlayerShopTitleText[playerid][0]=CreatePlayerShopTitleText(playerid, -65.000000, 22.000000,-1,-2055);
    if(type==SHOP_TYPE_SKIN)PlayerShopTitleText[playerid][1]=CreatePlayerShopTitleText(playerid,-65.000000, 111.000000,35839,-2056);
	else PlayerShopTitleText[playerid][1]=CreatePlayerShopTitleText(playerid, -65.000000, 111.000000,-1,-2056);
    if(type==SHOP_TYPE_ATTACH)PlayerShopTitleText[playerid][2]=CreatePlayerShopTitleText(playerid, -65.000000, 200.000000,35839,-2057);
	else PlayerShopTitleText[playerid][2]=CreatePlayerShopTitleText(playerid, -65.000000, 200.000000,-1,-2057);
    if(type==SHOP_TYPE_FUNC)PlayerShopTitleText[playerid][3]=CreatePlayerShopTitleText(playerid, -65.000000, 289.000000,35839,-2058);
	else PlayerShopTitleText[playerid][3]=CreatePlayerShopTitleText(playerid, -65.000000, 289.000000,-1,-2058);

	if(pages<1)pages=1;
	if(pages>floatround((PlayerShopPrevieCount[playerid]-1)/float(MAX_SHOP_SHOW_LIST),floatround_ceil))pages=floatround((PlayerShopPrevieCount[playerid]-1)/float(MAX_SHOP_SHOW_LIST),floatround_ceil);
    PlayerShopPreviePage[playerid]=pages;
    pages=(pages-1)*MAX_SHOP_SHOW_LIST;
    if(pages<=0)pages=1;else pages++;
    new BreakLine=0,NowLine=0;
	loop(i,pages,pages+MAX_SHOP_SHOW_LIST)
	{
	    index=PlayerShopPrevieBox[playerid][i];
	    if(i<PlayerShopPrevieCount[playerid])
		{
		    if(BreakLine>=4)
			{
				NowLine++;
				BreakLine=0;
			}
			PlayerShopListBg[playerid][PlayerShopPrevieRate[playerid]] = CreatePlayerShopListBg(playerid,44.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,64.0+NowLine*85);
			if(Item[index][_Type]==ITEM_TYPE_SKIN)PlayerShopListModel[playerid][PlayerShopPrevieRate[playerid]] = CreatePlayerShopListModel(playerid,31.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,65.0+NowLine*85,Skins[Item[index][_Index]][_Mod@Skin]);
			else PlayerShopListModel[playerid][PlayerShopPrevieRate[playerid]] = CreatePlayerShopListModel(playerid,31.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,65.0+NowLine*85,Item[index][_Model]);
			PlayerShopListAvatar[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListAvatar(playerid,106.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,34.0+NowLine*85,Item[index][_NameModel]);
            PlayerShopListPriceText[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListPST(playerid,111.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,102.5+NowLine*85,-2041);
            PlayerShopListStockText[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListPST(playerid,111.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,116.0+NowLine*85,-2052);
            PlayerShopListJiaBack[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListJJB(playerid,164.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,134.0+NowLine*85);
            PlayerShopListJianBack[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListJJB(playerid,136.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,134.0+NowLine*85);
			PlayerShopListJia[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListJia(playerid,165.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,132.0+NowLine*85);
            PlayerShopListJian[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListJian(playerid,137.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,132.0+NowLine*85);
            formatex32("%i",PlayerShopItemAmounts[playerid][index]);
            PlayerShopListBuyAmount[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListBA(playerid,155.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,132.0+NowLine*85,string32);
            formatex32("%i",Item[index][_Price]);
			PlayerShopListPrice[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListPrice(playerid,133.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,106.0+NowLine*85,string32);
            formatex32("%i",Item[index][_Stock]);
			PlayerShopListStock[playerid][PlayerShopPrevieRate[playerid]] =CreatePlayerShopListStock(playerid,133.0+(PlayerShopPrevieRate[playerid]-NowLine*4)*142.0,120.0+NowLine*85,string32);

			PlayerShopPrevieBoxDrawID[playerid][i]=PlayerShopPrevieRate[playerid];
			PlayerShopPrevieRate[playerid]++;
			BreakLine++;
		}
		if(i>=PlayerShopPrevieCount[playerid])break;
	}
	switch(type)
	{
	    case SHOP_TYPE_ALL:PlayerShopSlider[playerid]=CreatePlayerShopSlider(playerid,PlayerShopPreviePage[playerid],NONE);
	    case SHOP_TYPE_SKIN:PlayerShopSlider[playerid]=CreatePlayerShopSlider(playerid,PlayerShopPreviePage[playerid],ITEM_TYPE_SKIN);
	    case SHOP_TYPE_ATTACH:PlayerShopSlider[playerid]=CreatePlayerShopSlider(playerid,PlayerShopPreviePage[playerid],ITEM_TYPE_ATTACH);
	    case SHOP_TYPE_FUNC:PlayerShopSlider[playerid]=CreatePlayerShopSlider(playerid,PlayerShopPreviePage[playerid],ITEM_TYPE_FUNC);
	}
	formatex32("%i",Account[playerid][_Cash]);
	PlayerShopCash[playerid]=CreatePlayerShopCash(playerid,66.000000, 414.000000,string32);
	formatex32("%i",GetPlayerBillMoney(playerid));
	PlayerShopBill[playerid]=CreatePlayerShopBill(playerid,258.000000, 414.000000,string32);
  	PlayerShopListShow[playerid]=true;
	return 1;
}
N::GetPlayerHaveShopStockPBoxID(playerid,index)
{
	forex(i,MAX_SHOP_BOX_ITEMS)
	{
		if(PlayerShopPrevieBox[playerid][i]!=NONE&&PlayerShopPrevieBox[playerid][i]==index)
		{
		    return i;
		}
	}
	return NONE;
}
N::OnShopStockChanged(ItemID,Amount,key[])
{
	foreach(new i:Player)
	{
	    if(PlayerShopListShow[i]==true)
	    {
	        new boxid=GetPlayerHaveShopStockPBoxID(i,ItemID);
	        if(boxid!=NONE)
			{
				if(isequal(PlayerShopPrevieBoxKey[i][boxid],key,false))
				{
				    new DrawID=PlayerShopPrevieBoxDrawID[i][boxid];
				    if(DrawID!=NONE)
				    {
				        if(PlayerShopListStock[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
				        {
				            formatex32("%i",Amount);
				            PlayerTextDrawSetString(i,PlayerShopListStock[i][DrawID],string32);
			        	}
			        	if(PlayerShopItemAmounts[i][ItemID]>Amount)
			        	{
			        	    PlayerShopItemAmounts[i][ItemID]=Amount;
					        if(PlayerShopListBuyAmount[i][DrawID]!=PlayerText:INVALID_TEXT_DRAW)
					        {
					            formatex32("%i",Amount);
					            PlayerTextDrawSetString(i,PlayerShopListBuyAmount[i][DrawID],string32);
				        	}
						    formatex32("%i",GetPlayerBillMoney(i));
						    if(PlayerShopBill[i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawSetString(i,PlayerShopBill[i],string32);
			        	}
				    }
				}
			}

	    }
	}
	return 1;
}
N::GetPlayerBillMoneyEx(playerid)
{
	new Amount=0;
	forex(i,MAX_ITEMS)
	{
	    if(PlayerShopItemAmounts[playerid][i]>0/*&&Item[i][_Stock]>0*/)
	    {
	        Amount+=Item[i][_Price]*PlayerShopItemAmounts[playerid][i];
	    }
	}
	return Amount;
}
N::GetPlayerBillMoney(playerid)
{
	new Amount=0;
	forex(i,MAX_ITEMS)
	{
	    if(PlayerShopItemAmounts[playerid][i]>0)
	    {
	        Amount+=Item[i][_Price]*PlayerShopItemAmounts[playerid][i];
	    }
	}
	return Amount;
}
