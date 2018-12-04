#define PLAYER_GLOBALINV_PANEL "使用物品\n抛弃物品"
N::GlobalInv@DialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case _USE_GLOBALINV:
        {
            if(response)
            {
				new PVarString[64],PinvID,PinvKey[37],ItemID;
            	GetPVarString(playerid,"@_USE_GLOBALINV",PVarString,64);
            	if(sscanf(PVarString, "p<,>is[37]i",PinvID,PinvKey,ItemID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#2]","对话框数据验证失败,请重新选择","了解","");
            	if(!Iter_Contains(PlayerGlobalInv[playerid],PinvID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该物品已失效,请重新选择","了解","");
           	    if(!isequal(PlayerGlobalInv[playerid][PinvID][_ItemKey],PinvKey,false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#4]","对话框数据验证失败,请重新选择","了解","");
        	    if(PlayerGlobalInv[playerid][PinvID][_Amounts]<=0)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#5]","该物品已失效,请重新选择","了解","");
	            switch(listitem)
	            {
					case 0:
	            	{
	            	    switch(Item[ItemID][_Type])
	            	    {
	            	        case ITEM_TYPE_SKIN:
	            	        {
    	            	    	SetPlayerSkin(playerid,Skins[Item[ItemID][_Index]][_Mod@Skin]);
    	            	    	Account[playerid][_Skin@Avatar]=Item[ItemID][_Index];
    	            	    	Update@AccountSkin(playerid,Item[ItemID][_Index]);
    	            	    	DelItemFromPlayerGlobalInv(playerid,Item[ItemID][_Key],1);
								formatex128("物品:%s 类型:%s 使用成功!",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
    	            	    	SCM(playerid,-1,string128);
	            	        }
	            	        case ITEM_TYPE_ATTACH:
	            	        {
	            	        }
	            	        case ITEM_TYPE_FUNC:
	            	        {
	            	        }
	            	    }
                        TogglePlayerGlobalInvSelectable(playerid,1);
	            	}
	            	case 1:
	            	{
						if(PlayerGlobalInv[playerid][PinvID][_Amounts]<2)
						{
							formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
							Dialog@Show(playerid,_USE_GLOBALINV_DEL,DIALOG_STYLE_MSGBOX,string64,"确定删除该物品?\n注意:删除后将无法恢复","抛弃","返回");
							return 1;
						}
                        else
                        {
                            formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
                            formatex128("该物品有 %i 个,请输入删除的数量\n注意:删除后将无法恢复",PlayerGlobalInv[playerid][PinvID][_Amounts]);
							Dialog@Show(playerid,_USE_GLOBALINV_DEL_AMOUNT,DIALOG_STYLE_INPUT,string64,string128,"抛弃","返回");
                        }
	           	    }
            	}
            }
            else TogglePlayerGlobalInvSelectable(playerid,1);
        }
        case _USE_GLOBALINV_DEL:
        {
			new PVarString[64],PinvID,PinvKey[37],ItemID;
           	GetPVarString(playerid,"@_USE_GLOBALINV",PVarString,64);
           	if(sscanf(PVarString, "p<,>is[37]i",PinvID,PinvKey,ItemID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#2]","对话框数据验证失败,请重新选择","了解","");
           	if(!Iter_Contains(PlayerGlobalInv[playerid],PinvID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该物品已失效,请重新选择","了解","");
        	if(!isequal(PlayerGlobalInv[playerid][PinvID][_ItemKey],PinvKey,false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#4]","对话框数据验证失败,请重新选择","了解","");
        	if(PlayerGlobalInv[playerid][PinvID][_Amounts]<=0)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#5]","该物品已失效,请重新选择","了解","");
            if(response)
            {
                DelItemFromPlayerGlobalInv(playerid,Item[ItemID][_Key],PlayerGlobalInv[playerid][PinvID][_Amounts]);
                TogglePlayerGlobalInvSelectable(playerid,1);
			}
			else
			{
			    formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
			    Dialog@Show(playerid,_USE_GLOBALINV,DIALOG_STYLE_LIST,string64,PLAYER_GLOBALINV_PANEL,"选择","返回");
			}
        }
        case _USE_GLOBALINV_DEL_AMOUNT:
        {
			new PVarString[64],PinvID,PinvKey[37],ItemID;
           	GetPVarString(playerid,"@_USE_GLOBALINV",PVarString,64);
           	if(sscanf(PVarString, "p<,>is[37]i",PinvID,PinvKey,ItemID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#2]","对话框数据验证失败,请重新选择","了解","");
           	if(!Iter_Contains(PlayerGlobalInv[playerid],PinvID))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#3]","该物品已失效,请重新选择","了解","");
        	if(!isequal(PlayerGlobalInv[playerid][PinvID][_ItemKey],PinvKey,false))return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#4]","对话框数据验证失败,请重新选择","了解","");
        	if(PlayerGlobalInv[playerid][PinvID][_Amounts]<=0)return Dialog@Show(playerid,_ERROR,DIALOG_STYLE_MSGBOX,"错误[#5]","该物品已失效,请重新选择","了解","");
            if(response)
            {
                new Amounts=strval(inputtext);
            	if(Amounts<1)
            	{
                    formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
                    formatex128("输入的数值过小,请重新输入!\n该物品有 %i 个,请输入删除的数量\n注意:删除后将无法恢复",PlayerGlobalInv[playerid][PinvID][_Amounts]);
					Dialog@Show(playerid,_USE_GLOBALINV_DEL_AMOUNT,DIALOG_STYLE_INPUT,string64,string128,"抛弃","返回");
                    return 1;
				}
            	if(Amounts>PlayerGlobalInv[playerid][PinvID][_Amounts])
            	{
                    formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
                    formatex128("输入的数值已超过背包内该物品的数量,请重新输入!\n该物品有 %i 个,请输入删除的数量\n注意:删除后将无法恢复",PlayerGlobalInv[playerid][PinvID][_Amounts]);
					Dialog@Show(playerid,_USE_GLOBALINV_DEL_AMOUNT,DIALOG_STYLE_INPUT,string64,string128,"抛弃","返回");
                   	return 1;
            	}
            	DelItemFromPlayerGlobalInv(playerid,Item[ItemID][_Key],Amounts);
            	TogglePlayerGlobalInvSelectable(playerid,1);
			}
			else
			{
			    formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
			    Dialog@Show(playerid,_USE_GLOBALINV,DIALOG_STYLE_LIST,string64,PLAYER_GLOBALINV_PANEL,"选择","返回");
			}
        }
    }
    return 1;
}
N::OnPlayerClickGlobalInv(playerid,index)
{
	new PinvID=PlayerGlobalInvPrevieBox[playerid][index];
	new ItemID=GetItemIDByItemKey(PlayerGlobalInv[playerid][PinvID][_ItemKey]);
	if(ItemID!=NONE&&PlayerGlobalInv[playerid][PinvID][_Amounts]>0)
	{
	    formatex64("%s 类型:%s",Item[ItemID][_Name],ItemTypes[Item[ItemID][_Type]][_Name]);
	    Dialog@Show(playerid,_USE_GLOBALINV,DIALOG_STYLE_LIST,string64,PLAYER_GLOBALINV_PANEL,"选择","返回");
	    formatex64("%i,%s,%i",PinvID,PlayerGlobalInv[playerid][PinvID][_ItemKey],ItemID);
	    SetPVarString(playerid,"@_USE_GLOBALINV",string64);
	}
	return 1;
}
N::DB_LoadPlayerGlobalInv(playerid)//读取玩家背包
{
	formatex128("SELECT * FROM `"MYSQL_DB_USER_INV"` WHERE `归属密匙`='%s'",Account[playerid][_Key]);
    mysql_tquery(User@Handle,string128, "OnPlayerGlobalInvLoad", "i",playerid);
	return 1;
}
N::OnPlayerGlobalInvLoad(playerid)
{
    forex(i,cache_num_rows())
	{
	    if(i<MAX_PLAYERGLOBALINV_SLOTS)
	    {
            cache_get_field_content(i,"归属密匙",PlayerGlobalInv[playerid][i][_AccountKey],User@Handle,37);
            cache_get_field_content(i,"背包密匙",PlayerGlobalInv[playerid][i][_InvKey],User@Handle,37);
            cache_get_field_content(i,"物品密匙",PlayerGlobalInv[playerid][i][_ItemKey],User@Handle,37);
	    	PlayerGlobalInv[playerid][i][_Amounts]=cache_get_field_content_int(i,"物品数量",User@Handle);
	    	if(GetItemIDByItemKey(PlayerGlobalInv[playerid][i][_ItemKey])==NONE)
	    	{
	    	    formatex128("DELETE FROM `"MYSQL_DB_USER_INV"` WHERE `"MYSQL_DB_USER_INV"`.`背包密匙` ='%s'",PlayerGlobalInv[playerid][i][_InvKey]);
				mysql_query(User@Handle,string128,false);
				printf("%s 大厅背包,背包密匙-[%s] 物品密匙-[%s]异常,已删除",Account[playerid][_Name],PlayerGlobalInv[playerid][i][_InvKey],PlayerGlobalInv[playerid][i][_ItemKey]);
	    	}
	    	else
	    	{
				Iter_Add(PlayerGlobalInv[playerid],i);
			}
		}
		else
		{
		    printf("%s 大厅背包溢出",Account[playerid][_Name]);
			break;
		}
	}
	return 1;
}
N::PlayerGlobalInvRest(playerid)
{
   	Iter_Clear(PlayerGlobalInv[playerid]);
	return 1;
}
N::IsPlayerShopingInvFull(playerid,ItemID,Amounts)//商店购买数量检测背包容量
{
	new TypeAmounts=0,ItemAmounts=0;
	new HaveAmount=GetPlayerGlobalInvItemAmounts(playerid,Item[ItemID][_Key]);
    ItemAmounts=HaveAmount+Amounts;
    if(HaveAmount>0)TypeAmounts=Iter_Count(PlayerGlobalInv[playerid])+1;
    else TypeAmounts=Iter_Count(PlayerGlobalInv[playerid]);

	if(ItemAmounts>MAX_PLAYERGLOBALINV_LIMIT)return 1;
	if(TypeAmounts>=MAX_PLAYERGLOBALINV_SLOTS)return 1;
	if(TypeAmounts>Level[Account[playerid][_Level]][_GlobalInvSlots])return 1;
	return 0;
}
N::AddItemToPlayerGlobalInv(playerid,ItemKey[],Amounts)//道具添加到背包
{
	if(GetItemIDByItemKey(ItemKey)==NONE)return RETURN_NOT_EXIST;
	if(Amounts<1)return RETURN_SUCCESS;
	if(Iter_Count(PlayerGlobalInv[playerid])>=MAX_PLAYERGLOBALINV_SLOTS)return RETURN_DATA_FULL;
	if(Iter_Count(PlayerGlobalInv[playerid])>Level[Account[playerid][_Level]][_GlobalInvSlots])return RETURN_DATA_FULL;
	if(GetPlayerGlobalInvItemAmounts(playerid,ItemKey)+Amounts>MAX_PLAYERGLOBALINV_LIMIT)return RETURN_DATA_FULL;
	new bool:Update=false;
	foreach(new i:PlayerGlobalInv[playerid])
   	{
   	    if(isequal(PlayerGlobalInv[playerid][i][_ItemKey],ItemKey,false))
   	    {
   	        PlayerGlobalInv[playerid][i][_Amounts]+=Amounts;
		    formatex256("UPDATE `"MYSQL_DB_USER_INV"` SET  `物品数量` =  '%i' WHERE  `"MYSQL_DB_USER_INV"`.`背包密匙` ='%s'",PlayerGlobalInv[playerid][i][_Amounts],PlayerGlobalInv[playerid][i][_InvKey]);
			mysql_query(User@Handle,string256,false);
	        Update=true;
   	    }
	}
	if(!Update)
	{
    	new i=Iter_Free(PlayerGlobalInv[playerid]);
    	format(PlayerGlobalInv[playerid][i][_AccountKey],UUID_LEN,Account[playerid][_Key]);
    	UUID(PlayerGlobalInv[playerid][i][_InvKey], UUID_LEN);
		format(PlayerGlobalInv[playerid][i][_ItemKey],UUID_LEN,ItemKey);
    	PlayerGlobalInv[playerid][i][_Amounts]=Amounts;
        formatex256("INSERT INTO `"MYSQL_DB_USER_INV"`(`归属密匙`,`背包密匙`,`物品密匙`,`物品数量`) VALUES ('%s','%s','%s','%i')",PlayerGlobalInv[playerid][i][_AccountKey],PlayerGlobalInv[playerid][i][_InvKey],PlayerGlobalInv[playerid][i][_ItemKey],PlayerGlobalInv[playerid][i][_Amounts]);
   		mysql_query(User@Handle,string256,true);
        Iter_Add(PlayerGlobalInv[playerid],i);
	}
	if(PlayerGlobalInvListShow[playerid]==true)RefreshPlayerGlobalInvPage(playerid,PlayerGlobalInvPreviePage[playerid]);
	return RETURN_SUCCESS;
}
N::DelItemFromPlayerGlobalInv(playerid,ItemKey[],Amounts)//背包删除道具
{
	if(GetItemIDByItemKey(ItemKey)==NONE)return RETURN_NOT_EXIST;
    if(Amounts<1)return RETURN_SUCCESS;
	new bool:Update=false;
	foreach(new i:PlayerGlobalInv[playerid])
   	{
   	    if(isequal(PlayerGlobalInv[playerid][i][_ItemKey],ItemKey,false))
   	    {
   	        if(PlayerGlobalInv[playerid][i][_Amounts]>Amounts)
   	        {
   	            PlayerGlobalInv[playerid][i][_Amounts]-=Amounts;
			    formatex256("UPDATE `"MYSQL_DB_USER_INV"` SET  `物品数量` =  '%i' WHERE  `"MYSQL_DB_USER_INV"`.`背包密匙` ='%s'",PlayerGlobalInv[playerid][i][_Amounts],PlayerGlobalInv[playerid][i][_InvKey]);
				mysql_query(User@Handle,string256,false);
   	        }
   	        else
	   		{
	   		    formatex256("DELETE FROM `"MYSQL_DB_USER_INV"` WHERE `背包密匙`='%s'",PlayerGlobalInv[playerid][i][_InvKey]);
				mysql_query(User@Handle,string256,false);
    			new	cur = i;
   				Iter_SafeRemove(PlayerGlobalInv[playerid],cur,i);
 			}
   	        Update=true;
   	    }
	}
	if(!Update)return RETURN_NOT_EXIST;
	if(PlayerGlobalInvListShow[playerid]==true)RefreshPlayerGlobalInvPage(playerid,PlayerGlobalInvPreviePage[playerid]);
	return RETURN_SUCCESS;
}
N::GetPlayerGlobalInvItemAmounts(playerid,ItemKey[])
{
	new Amounts=0;
	foreach(new i:PlayerGlobalInv[playerid])
	{
	    if(isequal(PlayerGlobalInv[playerid][i][_ItemKey],ItemKey,false))Amounts=PlayerGlobalInv[playerid][i][_Amounts];
	}
   	return Amounts;
}
N::GetItemIDByItemKey(ItemKey[])//通过密匙查询物品ID
{
	new ItemID=NONE;
	forex(i,sizeof(Item))
	{
		if(isequal(Item[i][_Key],ItemKey,false))ItemID=i;
	}
	return ItemID;
}
N::GetTypeByItemKey(ItemKey[])//通过密匙查询物品类型
{
	new Type=NONE;
	forex(i,sizeof(Item))
	{
		if(isequal(Item[i][_Key],ItemKey,false))Type=Item[i][_Type];
	}
	return Type;
}

N::ShowPlayerGlobalInvBackGround(playerid)
{
	forex(i,MAX_PLAYRTGLOBALINVBACKTEXTDRAWS)TextDrawShowForPlayer(playerid,PlayerGlobalInvBackTextDraw[i]);
	return 1;
}
N::HidePlayerGlobalInvBackGround(playerid)
{
	forex(i,MAX_PLAYRTGLOBALINVBACKTEXTDRAWS)TextDrawHideForPlayer(playerid,PlayerGlobalInvBackTextDraw[i]);
	return 1;
}
N::PlayerGlobalInvBackGroundInt()
{
	PlayerGlobalInvBackTextDraw[0] = TextDrawCreate(425.000000, 417.000000, "~n~");//容量背景
	TextDrawFont(PlayerGlobalInvBackTextDraw[0], 1);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[0], 0.600000, 2.199999);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[0], 400.000000, 101.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[0], 3);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[0], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[0], 2);
	TextDrawColor(PlayerGlobalInvBackTextDraw[0], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[0], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[0], -156);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[0], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[0], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[0], 0);

	PlayerGlobalInvBackTextDraw[1] = TextDrawCreate(437.000000, 12.000000, "~n~");//背包背景
	TextDrawFont(PlayerGlobalInvBackTextDraw[1], 1);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[1], 0.600000, 44.400032);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[1], 400.000000, 384.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[1], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[1], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[1], 2);
	TextDrawColor(PlayerGlobalInvBackTextDraw[1], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[1], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[1], 100);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[1], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[1], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[1], 0);

	PlayerGlobalInvBackTextDraw[2] = TextDrawCreate(437.000000, 12.000000, "~n~");//背包标签
	TextDrawFont(PlayerGlobalInvBackTextDraw[2], 1);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[2], 0.600000, 3.949995);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[2], 400.000000, 384.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[2], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[2], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[2], 2);
	TextDrawColor(PlayerGlobalInvBackTextDraw[2], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[2], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[2], -16776976);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[2], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[2], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[2], 0);

	PlayerGlobalInvBackTextDraw[3] = TextDrawCreate(371.000000, -36.000000, "Nowy_TextDraw");//背包标签文字
	TextDrawFont(PlayerGlobalInvBackTextDraw[3], 5);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[3], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[3], 130.000000, 130.000000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[3], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[3], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[3], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[3], 255);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[3], 0);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[3], 50);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[3], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[3], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[3], 0);
	TextDrawSetPreviewModel(PlayerGlobalInvBackTextDraw[3], -2046);
	TextDrawSetPreviewRot(PlayerGlobalInvBackTextDraw[3], -90.000000, 0.000000, -180.000000, 0.250000);
	TextDrawSetPreviewVehCol(PlayerGlobalInvBackTextDraw[3], 1, 1);

	PlayerGlobalInvBackTextDraw[4] = TextDrawCreate(604.000000, 51.000000, "ld_beat:up");//上页按钮
	TextDrawFont(PlayerGlobalInvBackTextDraw[4], 4);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[4], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[4], 27.500000, 20.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[4], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[4], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[4], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[4], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[4], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[4], 50);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[4], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[4], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[4], 1);

	PlayerGlobalInvBackTextDraw[5] = TextDrawCreate(604.000000, 391.000000, "ld_beat:down");//下页按钮
	TextDrawFont(PlayerGlobalInvBackTextDraw[5], 4);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[5], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[5], 27.500000, 20.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[5], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[5], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[5], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[5], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[5], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[5], 50);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[5], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[5], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[5], 1);

	PlayerGlobalInvBackTextDraw[6] = TextDrawCreate(374.000000, 402.000000, "Nowy_TextDraw");//容量文字
	TextDrawFont(PlayerGlobalInvBackTextDraw[6], 5);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[6], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[6], 50.000000, 50.000000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[6], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[6], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[6], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[6], 255);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[6], 0);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[6], 50);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[6], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[6], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[6], 0);
	TextDrawSetPreviewModel(PlayerGlobalInvBackTextDraw[6], -2048);
	TextDrawSetPreviewRot(PlayerGlobalInvBackTextDraw[6], -90.000000, 0.000000, 180.000000, 0.140000);
	TextDrawSetPreviewVehCol(PlayerGlobalInvBackTextDraw[6], 1, 1);
	
	PlayerGlobalInvBackTextDraw[7] = TextDrawCreate(579.000000, 417.000000, "ld_otb2:butnBo");//返回大厅按钮
	TextDrawFont(PlayerGlobalInvBackTextDraw[7], 4);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[7], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[7], 52.500000, 36.000000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[7], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[7], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[7], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[7], -1);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[7], 255);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[7], 50);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[7], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[7], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[7], 1);

	PlayerGlobalInvBackTextDraw[8] = TextDrawCreate(587.000000, 408.000000, "Nowy_TextDraw");//返回大厅文字
	TextDrawFont(PlayerGlobalInvBackTextDraw[8], 5);
	TextDrawLetterSize(PlayerGlobalInvBackTextDraw[8], 0.600000, 2.000000);
	TextDrawTextSize(PlayerGlobalInvBackTextDraw[8], 38.500000, 38.500000);
	TextDrawSetOutline(PlayerGlobalInvBackTextDraw[8], 1);
	TextDrawSetShadow(PlayerGlobalInvBackTextDraw[8], 0);
	TextDrawAlignment(PlayerGlobalInvBackTextDraw[8], 1);
	TextDrawColor(PlayerGlobalInvBackTextDraw[8], 255);
	TextDrawBackgroundColor(PlayerGlobalInvBackTextDraw[8], 0);
	TextDrawBoxColor(PlayerGlobalInvBackTextDraw[8], 140);
	TextDrawUseBox(PlayerGlobalInvBackTextDraw[8], 1);
	TextDrawSetProportional(PlayerGlobalInvBackTextDraw[8], 1);
	TextDrawSetSelectable(PlayerGlobalInvBackTextDraw[8], 0);
	TextDrawSetPreviewModel(PlayerGlobalInvBackTextDraw[8], -2045);
	TextDrawSetPreviewRot(PlayerGlobalInvBackTextDraw[8], -90.000000, 0.000000, -180.000000, 0.230000);
	TextDrawSetPreviewVehCol(PlayerGlobalInvBackTextDraw[8], 1, 1);
	return 1;
}
stock PlayerText:CreatePlayerGlobalInvListBg(playerid, Float:Xpos, Float:Ypos)//单元背景
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListBg");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos,"LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 180.000000, 118.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1094795629);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvListModel(playerid, Float:Xpos, Float:Ypos,Model)//单元模型
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListModel");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 127.000000, 124.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 2);
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
stock PlayerText:CreatePlayerGlobalInvListType(playerid, Float:Xpos, Float:Ypos)//单元类型
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListType");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 50.000000, 50.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, -2049);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -90.000000, 0.000000, 180.000000, 0.140000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvListTN(playerid, Float:Xpos, Float:Ypos,Model,Color)//单元类型名称
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListTN");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 50.000000, 50.000000);
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
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -90.000000, 0.000000, 180.000000, 0.140000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvListAT(playerid, Float:Xpos, Float:Ypos)
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListAT");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 50.000000, 50.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, -2050);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -90.000000, 0.000000, 180.000000, 0.140000);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvListAmount(playerid, Float:Xpos, Float:Ypos,Amounts[])
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListAmount");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Amounts);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.483333, 2.900001);
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
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvLimit(playerid, Float:Xpos, Float:Ypos,Limits[])
{
    SetSVarString("CPTD","CreatePlayerGlobalInvLimit");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Limits);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.404166, 2.799998);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 1687547186);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerGlobalInvListName(playerid, Float:Xpos, Float:Ypos,Model)
{
    SetSVarString("CPTD","CreatePlayerGlobalInvListName");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, "Nowy_TextDraw");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 5);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 95.500000, 130.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 35839);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 0);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid,PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetPreviewModel(playerid, PlayerTextDraw, Model);
	PlayerTextDrawSetPreviewRot(playerid, PlayerTextDraw, -90.000000, 0.000000, 180.000000, 0.319999);
	PlayerTextDrawSetPreviewVehCol(playerid, PlayerTextDraw, 1, 1);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::GetPlayerGlobalInvTypeAmounts(playerid)return Iter_Count(PlayerGlobalInv[playerid]);
stock PlayerText:CreatePlayerGlobalInvSlider(playerid,pages)
{
    new PlayerGlobalInvAmounts=GetPlayerGlobalInvTypeAmounts(playerid);
    if(PlayerGlobalInvAmounts<=0)PlayerGlobalInvAmounts=1;
    new Float:BarTextSize=floatdiv(313,floatround(floatdiv(PlayerGlobalInvAmounts,MAX_PLAYERGLOBALINV_SHOW_LIST),floatround_ceil));
	if(pages<=0)pages=0;
	else pages--;
	SetSVarString("CPTD","CreatePlayerGlobalInvSlider");
 	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, 608.000000, 74.000000+floatmul(pages,BarTextSize), "LD_SPAC:WHITE");
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 20.500000, BarTextSize);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -3962);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, -4046);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::RestPlayerGlobalInvDraws(playerid,bool:destroy)//初始化玩家列表DRAWS
{
	forex(i,MAX_PLAYERGLOBALINV_BOX_ITEMS)
	{
	    PlayerGlobalInvPrevieBox[playerid][i]=NONE;
	    format(PlayerGlobalInvPrevieBoxKey[playerid][i],64,"");
	    PlayerGlobalInvPrevieBoxDrawID[playerid][i]=NONE;
	}
	PlayerGlobalInvPrevieCount[playerid]=NONE;
	PlayerGlobalInvPreviePage[playerid]=NONE;
	PlayerGlobalInvPrevieRate[playerid]=NONE;
	PlayerGlobalInvClickID[playerid]=NONE;
	if(destroy==true)
	{
		forex(i,MAX_PLAYERGLOBALINV_SHOW_LIST)
		{
		    SetSVarString("PTDD","PlayerGlobalInvListBg");
			if(PlayerGlobalInvListBg[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListBg[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListModel");
			if(PlayerGlobalInvListModel[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListModel[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListType");
			if(PlayerGlobalInvListType[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListType[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListTypeName");
			if(PlayerGlobalInvListTypeName[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListTypeName[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListAT");
			if(PlayerGlobalInvListAT[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListAT[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListAmount");
			if(PlayerGlobalInvListAmount[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListAmount[playerid][i]);
            SetSVarString("PTDD","PlayerGlobalInvListName");
			if(PlayerGlobalInvListName[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvListName[playerid][i]);
		}
		SetSVarString("PTDD","PlayerGlobalInvSlider");
		if(PlayerGlobalInvSlider[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvSlider[playerid]);
        SetSVarString("PTDD","PlayerGlobalInvLimit");
		if(PlayerGlobalInvLimit[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerGlobalInvLimit[playerid]);
	}
	forex(i,MAX_PLAYERGLOBALINV_SHOW_LIST)
	{
		PlayerGlobalInvListBg[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListModel[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListType[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListTypeName[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListAT[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListAmount[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
		PlayerGlobalInvListName[playerid][i]=PlayerText:INVALID_TEXT_DRAW;
	}
	PlayerGlobalInvSlider[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerGlobalInvLimit[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerGlobalInvListShow[playerid]=false;
	return 1;
}
N::RefreshPlayerGlobalInvPage(playerid,pages)return CreatePlayerGlobalInvPage(playerid,pages);
N::CreatePlayerGlobalInvPage(playerid,pages)
{
    RestPlayerGlobalInvDraws(playerid,true);
	new index=0,PlayerGlobalInvAmout=0;
    PlayerGlobalInvPrevieRate[playerid]=0;
    PlayerGlobalInvPrevieCount[playerid]=1;
    PlayerGlobalInvClickID[playerid]=NONE;

	new	Project_ID[MAX_PLAYERGLOBALINV_SLOTS],Top_Info[MAX_PLAYERGLOBALINV_SLOTS],Current_TopLine=Iter_Count(PlayerGlobalInv[playerid]);
    foreach(new i:PlayerGlobalInv[playerid])
    {
        HighestTopList(i,GetTypeByItemKey(PlayerGlobalInv[playerid][i][_ItemKey]),Project_ID, Top_Info, Current_TopLine);
    }
    forex(i,Current_TopLine)
	{
	    if(PlayerGlobalInvAmout<MAX_PLAYERGLOBALINV_BOX_ITEMS-2)
	    {
			PlayerGlobalInvPrevieBox[playerid][PlayerGlobalInvPrevieCount[playerid]]=Project_ID[i];
			format(PlayerGlobalInvPrevieBoxKey[playerid][PlayerGlobalInvPrevieCount[playerid]],64,"");
			format(PlayerGlobalInvPrevieBoxKey[playerid][PlayerGlobalInvPrevieCount[playerid]],64,PlayerGlobalInv[playerid][Project_ID[i]][_InvKey]);
   			PlayerGlobalInvPrevieCount[playerid]++;
   			PlayerGlobalInvAmout++;
	    }
	}
	if(pages<1)pages=1;
	if(pages>floatround((PlayerGlobalInvPrevieCount[playerid]-1)/float(MAX_PLAYERGLOBALINV_SHOW_LIST),floatround_ceil))pages=floatround((PlayerGlobalInvPrevieCount[playerid]-1)/float(MAX_PLAYERGLOBALINV_SHOW_LIST),floatround_ceil);
    PlayerGlobalInvPreviePage[playerid]=pages;
    pages=(pages-1)*MAX_PLAYERGLOBALINV_SHOW_LIST;
    if(pages<=0)pages=1;else pages++;
    new BreakLine=0,NowLine=0;
	loop(i,pages,pages+MAX_PLAYERGLOBALINV_SHOW_LIST)
	{
	    index=PlayerGlobalInvPrevieBox[playerid][i];
	    if(i<PlayerGlobalInvPrevieCount[playerid])
		{
		    if(BreakLine>=2)
			{
				NowLine++;
				BreakLine=0;
			}
			PlayerGlobalInvListBg[playerid][PlayerGlobalInvPrevieRate[playerid]] = CreatePlayerGlobalInvListBg(playerid,243.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*182.0,51.000000+NowLine*120.5);
			new ItemID=GetItemIDByItemKey(PlayerGlobalInv[playerid][index][_ItemKey]);
			new ItemType,ModelID,ItemTypeModel,ItemTypeColor,ItemNameModel;
			if(ItemID!=NONE)
			{
			    ItemType=Item[ItemID][_Type];
			    ModelID=Item[ItemID][_Model];
			    ItemTypeModel=0;
			    ItemTypeColor=176;
			    ItemNameModel=Item[ItemID][_NameModel];
			}
	  		switch(ItemType)
  			{
  			    case ITEM_TYPE_SKIN:
			  	{
			  		ModelID=Skins[Item[ItemID][_Index]][_Mod@Skin];
			  		ItemTypeColor=-16776961;
				}
  			}
  			ItemTypeModel=ItemTypes[Item[ItemID][_Type]][_Model];
			PlayerGlobalInvListModel[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListModel(playerid,225.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*176.0,50.000000+NowLine*119,ModelID);
			PlayerGlobalInvListType[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListType(playerid,328.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*181.0,129.000000+NowLine*118.5);
			PlayerGlobalInvListTypeName[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListTN(playerid,374.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*182.0,129.000000+NowLine*118,ItemTypeModel,ItemTypeColor);
			PlayerGlobalInvListAT[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListAT(playerid,328.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*181.0,95.000000+NowLine*123);
            formatex32("%i",PlayerGlobalInv[playerid][index][_Amounts]);
			PlayerGlobalInvListAmount[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListAmount(playerid,380.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*183.0,106.000000+NowLine*123,string32);
            PlayerGlobalInvListName[playerid][PlayerGlobalInvPrevieRate[playerid]] =CreatePlayerGlobalInvListName(playerid,321.000000+(PlayerGlobalInvPrevieRate[playerid]-NowLine*2)*183.0,7.000000+NowLine*123,ItemNameModel);
			PlayerGlobalInvPrevieBoxDrawID[playerid][i]=PlayerGlobalInvPrevieRate[playerid];
			PlayerGlobalInvPrevieRate[playerid]++;
			BreakLine++;
		}
		if(i>=PlayerGlobalInvPrevieCount[playerid])break;
	}
 	PlayerGlobalInvSlider[playerid]=CreatePlayerGlobalInvSlider(playerid,PlayerGlobalInvPreviePage[playerid]);
 	formatex32("%i/%i",GetPlayerGlobalInvTypeAmounts(playerid),Level[Account[playerid][_Level]][_GlobalInvSlots]);
 	PlayerGlobalInvLimit[playerid]=CreatePlayerGlobalInvLimit(playerid,450.000000, 413.000000,string32);
  	PlayerGlobalInvListShow[playerid]=true;
	return 1;
}
N::TogglePlayerGlobalInvSelectable(playerid,Toggle)
{
    if(PlayerGlobalInvListShow[playerid]==true)
    {
		forex(i,MAX_PLAYERGLOBALINV_SHOW_LIST)
		{
			if(PlayerGlobalInvListBg[playerid][i]!=PlayerText:INVALID_TEXT_DRAW)
            {
				PlayerTextDrawSetSelectable(playerid, PlayerGlobalInvListBg[playerid][i], Toggle);
                PlayerTextDrawShow(playerid,PlayerGlobalInvListBg[playerid][i]);
            }
        }
	}
	return 1;
}


