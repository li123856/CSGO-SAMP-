N::Account@DialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case _LOGIN://登录对话框
        {
    		if(!response)return 1;
    		formatex128(inputtext,128);
    		SHA256_PassHash(inputtext,PASSWORD_SALT,string128,128);
		    new Query[128];
			format(Query, sizeof(Query), "SELECT * FROM `"MYSQL_DB_USER"` WHERE `名字` = '%s' LIMIT 1",Account[playerid][_Name]);
			mysql_query(User@Handle,Query,true);
			new TempPassWord[128];
			cache_get_field_content(0,"密码",TempPassWord,User@Handle,128);

			if(isequal(string128,TempPassWord,false))
			{
			    Account[playerid][_Index]=cache_get_field_content_int(0,"编号",User@Handle);
			    cache_get_field_content(0,"密匙",Account[playerid][_Key],User@Handle,64);
                cache_get_field_content(0,"密码",Account[playerid][_Password],User@Handle,128);
 			    Account[playerid][_Skin@Avatar]=cache_get_field_content_int(0,"皮肤",User@Handle);
			    Account[playerid][_Cash]=cache_get_field_content_int(0,"金币",User@Handle);
			    Account[playerid][_Mute]=cache_get_field_content_int(0,"禁言",User@Handle);
			    Account[playerid][_Level]=cache_get_field_content_int(0,"等级",User@Handle);
			    Account[playerid][_Exp]=cache_get_field_content_int(0,"经验",User@Handle);
			    Account[playerid][_FaceAngle]=cache_get_field_content_float(0,"面向角度",User@Handle);
				Hooks("OnAccountLoginGame","ii",playerid,0);
			}
			else Dialog@Show(playerid,_LOGIN,DIALOG_STYLE_INPUT,"登录账号","密码错误,请输入密码来登录","确定","关闭");
		}
        case _REGISTER://注册对话框
        {
		    if(!response)return 1;
			if(strlen(inputtext)<6||strlen(inputtext)>15)return Dialog@Show(playerid,_REGISTER,DIALOG_STYLE_INPUT,"注册账号","密码过长或过短,请输入密码来注册","确定","关闭");
		    SHA256_PassHash(inputtext,PASSWORD_SALT,Account[playerid][_Password],128);
		    UUID(Account[playerid][_Key], UUID_LEN);
	     	Account[playerid][_Skin@Avatar]=1;
	      	Account[playerid][_Cash]=0;
	       	Account[playerid][_Mute]=0;
	        Account[playerid][_Level]=0;
	        Account[playerid][_Exp]=0;
            Account[playerid][_FaceAngle]=262.3093;
			new Query[1024];
			format(Query, sizeof(Query),\
			"INSERT INTO `"MYSQL_DB_USER"` (\
			`名字`,\
			`密匙`,\
			`密码`,\
			`皮肤`,\
			`面向角度`\
			)\
			VALUES\
			('%s','%s','%s','%i','%f')",\
			Account[playerid][_Name],Account[playerid][_Key],Account[playerid][_Password],Account[playerid][_Skin@Avatar],Account[playerid][_FaceAngle]);
			mysql_query(User@Handle,Query,true);
			Account[playerid][_Index]=cache_insert_id();
		    Hooks("OnAccountLoginGame","ii",playerid,1);
        }
    }
    return 1;
}
N::Update@AccountFaceAngle(playerid,Float:FaceAngle)
{
	formatex128("UPDATE `"MYSQL_DB_USER"` SET  `面向角度`='%f' WHERE  `"MYSQL_DB_USER"`.`密匙` ='%s'",FaceAngle,Account[playerid][_Key]);
	mysql_query(User@Handle,string128,false);
    return 1;
}
N::Update@AccountSkin(playerid,Skin)
{
	formatex128("UPDATE `"MYSQL_DB_USER"` SET  `皮肤`='%i' WHERE  `"MYSQL_DB_USER"`.`密匙` ='%s'",Skin,Account[playerid][_Key]);
	mysql_query(User@Handle,string128,false);
    return 1;
}
N::Update@AccountCash(playerid,Cash)
{
	formatex128("UPDATE `"MYSQL_DB_USER"` SET  `金币`='%i' WHERE  `"MYSQL_DB_USER"`.`密匙` ='%s'",Cash,Account[playerid][_Key]);
	mysql_query(User@Handle,string128,false);
    return 1;
}
N::RestAccountDate(playerid)
{
	if(Account[playerid][Timer:_SpawnTimer]!=NONE)KillTimer(Account[playerid][Timer:_SpawnTimer]);
	if(Account[playerid][Timer:_ShowTimer]!=NONE)KillTimer(Account[playerid][Timer:_ShowTimer]);
	for(new i;Account_InFo:i<Account_InFo;i++)Account[playerid][Account_InFo:i]=0;
	Account[playerid][_Skin@Avatar]=1;
	Account[playerid][Timer:_SpawnTimer]=NONE;
	Account[playerid][Timer:_ShowTimer]=NONE;
   	Account[playerid][_Skin@Avatar]=1;
	return 1;
}
stock GetPlayerNameEx(playerid,name[],len)
{
	new ret=GetPlayerName(playerid,name,len);
	for(new i=0;name[i]!=0;i++)if(name[i]<0)name[i]+=256;
	return ret;
}
N::Account@GetAccountInfo(playerid)
{
	new Query[128];
	format(Query,sizeof(Query),"SELECT * FROM `"MYSQL_DB_USER"` WHERE `名字`='%s' LIMIT 1",Account[playerid][_Name]);
    mysql_tquery(User@Handle,Query, "OnAccountDataLoad","i",playerid);
	return 1;
}
N::OnAccountDataLoad(playerid)//玩家资料载入
{
	if(cache_num_rows(User@Handle))
	{
	    Account[playerid][_Skin@Avatar]=cache_get_field_content_int(0,"皮肤",User@Handle);
	    Account[playerid][_FaceAngle]=cache_get_field_content_int(0,"面向角度",User@Handle);
	    SetSpawnInfo(playerid,NO_TEAM,Skins[Account[playerid][_Skin@Avatar]][_Mod@Skin],-561.8014,465.1385,114.7091,277.2332,0,0,0,0,0,0);
	    SetPlayerSkin(playerid,Skins[Account[playerid][_Skin@Avatar]][_Mod@Skin]);
	    Account[playerid][_Register]=true;
	}
	else
	{
	    Account[playerid][_FaceAngle]=262.3093;
	    SetPlayerSkin(playerid,Skins[1][_Mod@Skin]);
	    Account[playerid][_Register]=false;
	}
	SetPlayerTime(playerid,12,0);
	SetPlayerWeather(playerid,20);
    SetPlayerPos(playerid,-561.8014,465.1385,114.7091);
    SetPlayerFacingAngle(playerid,Account[playerid][_FaceAngle]);
	SetPlayerCameraPos(playerid,-559.05,463.9912,114.7091);
	SetPlayerCameraLookAt(playerid,-561.8014,463.9912,114.7091);
    Account[playerid][Timer:_ShowTimer]=SetTimerEx("ShowIntFaceToPlayer",2000, false, "i", playerid);
	return 1;
}
N::ShowIntFaceToPlayer(playerid)
{
	TextDrawHideForPlayer(playerid,LoadingInterFaceBackGround);
	TextDrawHideForPlayer(playerid,LoadingInterFaceText);
	
	ShowPlayerRoomBackGround(playerid);
	CreatePlayerRoomPage(playerid,1);
	if(Account[playerid][_Register]==true)ShowPlayerAccountPanelLogin(playerid);
	else ShowPlayerAccountPanelRegister(playerid);

	SelectTextDraw(playerid, 0xFF8500FF);
	Account[playerid][Timer:_ShowTimer]=NONE;
   	return 1;
}
N::OnAccountLoginGame(playerid,isregister)//玩家登陆游戏后
{
	if(isregister==1)
	{
	    SetSpawnInfo(playerid,NO_TEAM,Skins[Account[playerid][_Skin@Avatar]][_Mod@Skin],-561.8014,465.1385,114.7091,277.2332,0,0,0,0,0,0);
	    SetPlayerSkin(playerid,Skins[Account[playerid][_Skin@Avatar]][_Mod@Skin]);
    	SetPlayerPos(playerid,-561.8014,465.1385,114.7091);
    	SetPlayerFacingAngle(playerid,Account[playerid][_FaceAngle]);
	}
	else
	{
	    Hooks("DB_LoadPlayerGlobalInv","i",playerid);
	}
	
    Account[playerid][_Register]=true;
    Account[playerid][_Login]=true;
    ShowPlayerAccountPanel(playerid,false);
    ShowPlayerLevelDraws(playerid);
    
    SetPlayerScore(playerid,Account[playerid][_Level]);
	return 1;
}
