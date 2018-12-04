#define MAX_GLOBALARTS 200
enum
{
    TYPE_TXD,
	TYPE_DFF
}
enum DownFiles_Info
{
	_Type,
	_Crc,
	_FilesTXD[64],
	_FilesDFF[64],
};
new PlayerDownloadFiles[MAX_PLAYERS][MAX_GLOBALARTS][DownFiles_Info];
new Iterator:PlayerDownloadFiles[MAX_PLAYERS]<MAX_GLOBALARTS>;
enum DownState_Info
{
    bool:_Finished,
	bool:_Started,
	bool:_Redirected,
	_TimeCount,
	_VirtualWorld,
	_Bytes
};
new PlayerDownloadState[MAX_PLAYERS][DownState_Info];
enum GlobalArts_InFo
{
    _Files_DFF[64],
    _Files_TXD[64],
	_Files_Type,
	_Files_World,
	_Files_Baseid,
	_Files_Newid,
}
new GlobalArts[MAX_GLOBALARTS][GlobalArts_InFo];
new Iterator:GlobalArts<MAX_GLOBALARTS>;
new GlobalFilesDFF=0;
new GlobalFilesTXD=0;
enum
{
    TYPE_SIMPLE_MODEL,
	TYPE_SIMPLE_MODEL_TIMED,
	TYPE_CHAR_MODEL
}
N::GetDownLoadedObjs()
{
    new Amounts=0;
    foreach(new i:GlobalArts)
    {
        if(GlobalArts[i][_Files_Type]==TYPE_SIMPLE_MODEL||GlobalArts[i][_Files_Type]==TYPE_SIMPLE_MODEL_TIMED)Amounts++;
    }
	return Amounts;
}
N::GetDownLoadedChars()
{
    new Amounts=0;
    foreach(new i:GlobalArts)
    {
        if(GlobalArts[i][_Files_Type]==TYPE_CHAR_MODEL)Amounts++;
    }
	return Amounts;
}
N::IsDffExist(dff[])
{
	foreach(new i:GlobalArts)
	{
		if(isequal(GlobalArts[i][_Files_DFF],dff,false))return 1;
	}
	return 0;
}
N::IsTxdExist(txd[])
{
	foreach(new i:GlobalArts)
	{
		if(isequal(GlobalArts[i][_Files_TXD],txd,false))return 1;
	}
	return 0;
}
N::IsPlayerDffExist(playerid,dff[])
{
	foreach(new i:PlayerDownloadFiles[playerid])
	{
		if(isequal(PlayerDownloadFiles[playerid][i][_FilesDFF],dff,false))return 1;
	}
	return 0;
}
N::IsPlayerTxdExist(playerid,txd[])
{
	foreach(new i:PlayerDownloadFiles[playerid])
	{
		if(isequal(PlayerDownloadFiles[playerid][i][_FilesTXD],txd,false))return 1;
	}
	return 0;
}
stock d_AddSimpleModel(vw, bid, nid, dff[], txd[])
{
    new i=Iter_Free(GlobalArts);
    if(Iter_Count(GlobalArts)>=MAX_GLOBALARTS)return printf("请修改MAX_GLOBALARTS");
    if(!IsDffExist(dff))GlobalFilesDFF++;
    if(!IsTxdExist(txd))GlobalFilesTXD++;
    format(GlobalArts[i][_Files_DFF],64,dff);
    format(GlobalArts[i][_Files_TXD],64,txd);
    GlobalArts[i][_Files_Type]=TYPE_SIMPLE_MODEL;
    GlobalArts[i][_Files_World]=vw;
    GlobalArts[i][_Files_Baseid]=bid;
    GlobalArts[i][_Files_Newid]=nid;
    Iter_Add(GlobalArts,i);
	return AddSimpleModel(vw, bid, nid, dff, txd);
}
stock d_AddSimpleModelTimed(vw, bid, nid, dff[], txd[], ton, toff)
{
    new i=Iter_Free(GlobalArts);
    if(Iter_Count(GlobalArts)>=MAX_GLOBALARTS)return printf("请修改MAX_GLOBALARTS");
    if(!IsDffExist(dff))GlobalFilesDFF++;
    if(!IsTxdExist(txd))GlobalFilesTXD++;
    format(GlobalArts[i][_Files_DFF],64,dff);
    format(GlobalArts[i][_Files_TXD],64,txd);
    GlobalArts[i][_Files_Type]=TYPE_SIMPLE_MODEL_TIMED;
    GlobalArts[i][_Files_World]=vw;
    GlobalArts[i][_Files_Baseid]=bid;
    GlobalArts[i][_Files_Newid]=nid;
    Iter_Add(GlobalArts,i);
	return AddSimpleModelTimed(vw, bid, nid, dff, txd, ton, toff);
}
stock d_AddCharModel(bid, nid, dff[], txd[])
{
    new i=Iter_Free(GlobalArts);
    if(Iter_Count(GlobalArts)>=MAX_GLOBALARTS)return printf("请修改MAX_GLOBALARTS");
    if(!IsDffExist(dff))GlobalFilesDFF++;
    if(!IsTxdExist(txd))GlobalFilesTXD++;
    format(GlobalArts[i][_Files_DFF],64,dff);
    format(GlobalArts[i][_Files_TXD],64,txd);
    GlobalArts[i][_Files_Type]=TYPE_CHAR_MODEL;
    GlobalArts[i][_Files_World]=-1;
    GlobalArts[i][_Files_Baseid]=bid;
    GlobalArts[i][_Files_Newid]=nid;
    Iter_Add(GlobalArts,i);
	return AddCharModel(bid, nid, dff, txd);
}
#if defined _ALS_AddSimpleModel
	#undef AddSimpleModel
#else
	#define _ALS_AddSimpleModel
#endif
#define AddSimpleModel d_AddSimpleModel

#if defined _ALS_AddSimpleModelTimed
	#undef AddSimpleModelTimed
#else
	#define _ALS_AddSimpleModelTimed
#endif
#define AddSimpleModelTimed d_AddSimpleModelTimed

#if defined _ALS_AddCharModel
	#undef AddCharModel
#else
	#define _ALS_AddCharModel
#endif
#define AddCharModel d_AddCharModel
/*********************************************************************/
stock d_RedirectDownload(playerid, url[])
{
	PlayerDownloadState[playerid][_Redirected]=true;
	return RedirectDownload(playerid, url);
}
#if defined _ALS_RedirectDownload
	#undef RedirectDownload
#else
	#define _ALS_RedirectDownload
#endif
#define RedirectDownload d_RedirectDownload
/*********************************************************************/
/*********************************************************************/
N::RestDownLoadArt(playerid)
{
    Iter_Clear(PlayerDownloadFiles[playerid]);
	for(new DownState_Info:i; i < DownState_Info; i++)PlayerDownloadState[playerid][i] = 0;
	PlayerDownloadState[playerid][_Started] = false;
	PlayerDownloadState[playerid][_Finished] = false;
	return 1;
}

/*********************************************************************/
/*********************************************************************/
stock Float:GetPlayerDownloadProgress(playerid)
{
	return floatmul(floatdiv(GetPlayerDownloadedFiles(playerid),(GlobalFilesDFF+GlobalFilesTXD)),100);
}
stock PlayerText:CreatePlayerDownLoadSign(playerid, Float:Xpos, Float:Ypos,Model[])//单元类型名称"ld_grav:bee1"
{
    SetSVarString("CPTD","CreatePlayerDownLoadSign");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Model);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 23.500000, 21.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 1);
	PlayerTextDrawColor(playerid, PlayerTextDraw, -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
stock PlayerText:CreatePlayerDownLoadProgress(playerid, Float:Xpos, Float:Ypos,Progress[])//单元类型名称
{
    SetSVarString("CPTD","CreatePlayerDownLoadProgress");
	new PlayerText:PlayerTextDraw = CreatePlayerTextDraw(playerid, Xpos, Ypos, Progress);
	PlayerTextDrawFont(playerid, PlayerTextDraw, 2);
	PlayerTextDrawLetterSize(playerid, PlayerTextDraw, 0.195833, 1.199999);
	PlayerTextDrawTextSize(playerid, PlayerTextDraw, 400.000000, 153.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetShadow(playerid, PlayerTextDraw, 0);
	PlayerTextDrawAlignment(playerid, PlayerTextDraw, 2);
	PlayerTextDrawColor(playerid, PlayerTextDraw, 16711935);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextDraw, 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextDraw, 50);
	PlayerTextDrawUseBox(playerid, PlayerTextDraw, 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextDraw, 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextDraw, 0);
	PlayerTextDrawShow(playerid,PlayerTextDraw);
    return PlayerTextDraw;
}
N::ShowPlayerDownLoadBackGround(playerid)
{
	forex(i,MAX_DOWNLOADTEXTDRAWS)TextDrawShowForPlayer(playerid,DownLoadTextDraw[i]);
	return 1;
}
N::HidePlayerDownLoadBackGround(playerid)
{
	forex(i,MAX_DOWNLOADTEXTDRAWS)TextDrawHideForPlayer(playerid,DownLoadTextDraw[i]);
	return 1;
}
public OnPlayerRequestDownload(playerid, type, crc)
{
	if(IsPlayerConnected(playerid))
	{
		if(PlayerDownloadState[playerid][_Started]==false)
		{
			PlayerDownloadState[playerid][_Started] = true;
			PlayerDownloadState[playerid][_Finished] = false;
			PlayerDownloadState[playerid][_TimeCount] = GetTickCount();
			PlayerDownloadState[playerid][_VirtualWorld] = GetPlayerVirtualWorld(playerid);
			PlayerDownloadState[playerid][_Bytes] = NetStats_BytesSent(playerid);
			PlayerDownLoadSignRate[playerid]=0;
			PlayerDownLoadSign[playerid]=PlayerText:INVALID_TEXT_DRAW;
			PlayerDownLoadProgress[playerid]=PlayerText:INVALID_TEXT_DRAW;
			RestPlayerPlayerDownLoadDraws(playerid,true);
			ShowPlayerDownLoadBackGround(playerid);
			PlayerDownLoadSign[playerid]=CreatePlayerDownLoadSign(playerid, 255.000000, -2.000000, "ld_grav:bee1");
			PlayerDownLoadProgress[playerid]=CreatePlayerDownLoadProgress(playerid,335.000000, 8.000000, "0.0%%");
			CallLocalFunction("OnPlayerStartedDownloading", "dd", playerid, PlayerDownloadState[playerid][_VirtualWorld]);

		}
		switch(type)
		{
			case DOWNLOAD_REQUEST_TEXTURE_FILE:
			{
				new _txd[64];
				FindTextureFileNameFromCRC(crc,_txd,64);
				if(!IsPlayerTxdExist(playerid,_txd))
				{
		    		new i=Iter_Free(PlayerDownloadFiles[playerid]);
		    		PlayerDownloadFiles[playerid][i][_Type]=TYPE_TXD;
		    		PlayerDownloadFiles[playerid][i][_Crc]=crc;
		    		format(PlayerDownloadFiles[playerid][i][_FilesTXD],64,_txd);
		    		Iter_Add(PlayerDownloadFiles[playerid],i);
	    		}
			}
			case DOWNLOAD_REQUEST_MODEL_FILE:
			{
			    new _dff[64];
			    FindModelFileNameFromCRC(crc,_dff,64);
			    if(!IsPlayerDffExist(playerid,_dff))
			    {
		    		new i=Iter_Free(PlayerDownloadFiles[playerid]);
		    		PlayerDownloadFiles[playerid][i][_Type]=TYPE_DFF;
		    		PlayerDownloadFiles[playerid][i][_Crc]=crc;
		    		format(PlayerDownloadFiles[playerid][i][_FilesDFF],64,_dff);
		    		Iter_Add(PlayerDownloadFiles[playerid],i);
	    		}
			}
		}
		PlayerDownloadState[playerid][_Redirected]=false;
		if(PlayerDownLoadSign[playerid]!=PlayerText:INVALID_TEXT_DRAW&&PlayerDownLoadProgress[playerid]!=PlayerText:INVALID_TEXT_DRAW)
		{
		    formatex32("%0.1f%%", GetPlayerDownloadProgress(playerid));
		    if(PlayerDownLoadSignRate[playerid]==0)
		    {
		        PlayerTextDrawSetString(playerid,PlayerDownLoadSign[playerid],"ld_grav:bee2");
		        PlayerTextDrawSetString(playerid,PlayerDownLoadProgress[playerid],string32);
		        PlayerDownLoadSignRate[playerid]=1;
		    }
		    else
		    {
		        PlayerTextDrawSetString(playerid,PlayerDownLoadSign[playerid],"ld_grav:bee1");
		        PlayerTextDrawSetString(playerid,PlayerDownLoadProgress[playerid],string32);
		        PlayerDownLoadSignRate[playerid]=0;
		    }
		}
	}
	return 1;
}
stock ReturnConvertMs(Milliseconds)
{
    new rHour,rMin,rS,rMS;
	rHour			=	Milliseconds 	/ 	3600000;
	Milliseconds	-=	rHour			*	3600000;
	rMin			=	Milliseconds 	/ 	60000;
	Milliseconds	-=	rMin			*	60000;
	rS				=	Milliseconds	/	1000;
	Milliseconds	-=	rS				*	1000;
	rMS				=	Milliseconds;
	new Body[64],Temp[16];
	if(rHour>0)
	{
		format(Temp,sizeof(Temp),"%i时 ",rHour);
		strcat(Body,Temp);
    }
	if(rMin>0)
	{
		format(Temp,sizeof(Temp),"%i分 ",rMin);
		strcat(Body,Temp);
    }
	if(rS>0)
	{
		format(Temp,sizeof(Temp),"%i秒 ",rS);
		strcat(Body,Temp);
    }
	if(rMS>0)
	{
		format(Temp,sizeof(Temp),"%i毫秒",rMS);
		strcat(Body,Temp);
    }
    if(rHour<=0&&rMin<=0&&rS<=0&&rMS<=0)
    {
		format(Temp,sizeof(Temp),"0毫秒");
		strcat(Body,Temp);
    }
	return Body;
}
stock ReturnConvertStorage(Bytes)
{
    new rMbs,rKbs,rBytes;
	rMbs			=	Bytes 	/ 	1048576;
	Bytes	-=	rMbs			*	1048576;
	rKbs			=	Bytes 	/ 	1024;
	Bytes	-=	rKbs			*	1024;
	rBytes				=	Bytes;
	new Body[64],Temp[16];
	if(rMbs>0)
	{
		format(Temp,sizeof(Temp),"%iMb ",rMbs);
		strcat(Body,Temp);
    }
	if(rKbs>0)
	{
		format(Temp,sizeof(Temp),"%iKb ",rKbs);
		strcat(Body,Temp);
    }
	if(rBytes>0)
	{
		format(Temp,sizeof(Temp),"%iByte",rBytes);
		strcat(Body,Temp);
    }
	return Body;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
	if(IsPlayerConnected(playerid))
	{
		if(PlayerDownloadState[playerid][_Finished]==false)
		{
			if(PlayerDownloadState[playerid][_Started]==true)
			{
				PlayerDownloadState[playerid][_Started]=false;
				if(PlayerDownloadState[playerid][_Redirected]==false)
				{
					formatex128("文件%i个[模型%i个|纹理%i个],数据总量<解压前>[%s],平均速度[%s/秒],总耗时[%s]", GetPlayerDownloadedFiles(playerid), GetPlayerDownloadedModels(playerid), GetPlayerDownloadedTextures(playerid),ReturnConvertStorage(GetPlayerDownloadedBytes(playerid)),ReturnConvertStorage(GetPlayerDownloadSpeed(playerid)),ReturnConvertMs(GetPlayerDownloadTime(playerid)));
					SCM(playerid, -1, string128);
					printf("%s 下载文件%i个,数据总量<解压前>[%s],平均速度[%s/秒],总耗时[%s]",Account[playerid][_Name],GetPlayerDownloadedFiles(playerid),ReturnConvertStorage(GetPlayerDownloadedBytes(playerid)),ReturnConvertStorage(GetPlayerDownloadSpeed(playerid)),ReturnConvertMs(GetPlayerDownloadTime(playerid)));
				}
				else
				{
					formatex128("文件%i个[模型%i个|纹理%i个],总耗时[%s]", GetPlayerDownloadedFiles(playerid), GetPlayerDownloadedModels(playerid), GetPlayerDownloadedTextures(playerid),ReturnConvertMs(GetPlayerDownloadTime(playerid)));
					SCM(playerid, -1, string128);
					printf("%s 下载文件%i个,总耗时[%s]",Account[playerid][_Name],GetPlayerDownloadedFiles(playerid),ReturnConvertMs(GetPlayerDownloadTime(playerid)));
				}
			}
			PlayerDownloadState[playerid][_Finished]=true;
			RestPlayerPlayerDownLoadDraws(playerid,true);
			TextDrawShowForPlayer(playerid,LoadingInterFaceBackGround);
			TextDrawShowForPlayer(playerid,LoadingInterFaceText);
			Account[playerid][Timer:_SpawnTimer]=SetTimerEx("AutoSpawnPlayer",3000, false, "i", playerid);
		}
	}
    return 1;
}

/************************************************************************/
N::IsPlayerDownloading(playerid) return PlayerDownloadState[playerid][_Started];
N::IsPlayerDownloadFinish(playerid) return PlayerDownloadState[playerid][_Finished];
N::GetPlayerDownloadTime(playerid) return GetTickCount()-PlayerDownloadState[playerid][_TimeCount];
N::GetPlayerDownloadSpeed(playerid)
{
	new Float:rTime=1.0;
	if(GetPlayerDownloadTime(playerid)>=1024)rTime=floatdiv(GetPlayerDownloadTime(playerid),1024);
	return floatround(floatdiv(GetPlayerDownloadedBytes(playerid),rTime));
}
N::GetPlayerDownloadedTextures(playerid)
{
    new Amounts=0;
    foreach(new i:PlayerDownloadFiles[playerid])
    {
        if(PlayerDownloadFiles[playerid][i][_Type]==TYPE_TXD)Amounts++;
    }
	return Amounts;
}
stock GetPlayerDownloadedModels(playerid)
{
    new Amounts=0;
    foreach(new i:PlayerDownloadFiles[playerid])
    {
        if(PlayerDownloadFiles[playerid][i][_Type]==TYPE_DFF)Amounts++;
    }
	return Amounts;
}
stock GetPlayerDownloadedFiles(playerid) return Iter_Count(PlayerDownloadFiles[playerid]);

stock GetPlayerDownloadedBytes(playerid)
{
	if(PlayerDownloadState[playerid][_Redirected]) return 0;
	return NetStats_BytesSent(playerid) - PlayerDownloadState[playerid][_Bytes];
}

stock IsPlayerUseRedirectDownload(playerid) return PlayerDownloadState[playerid][_Redirected];

// Server
stock IsServerUseArtwork() return Iter_Count(GlobalArts);

stock GetArtworkGlobalSimpleModels() return GetDownLoadedObjs();
stock GetArtworkGlobalCharModels() return GetDownLoadedChars();
stock GetArtworksModelFiles() return GlobalFilesDFF;
stock GetArtworksTextureFiles() return GlobalFilesTXD;

forward OnPlayerStartedDownloading(playerid, virtualworld);

N::DownLoadArtTextDrawInt()
{
	DownLoadTextDraw[0] = TextDrawCreate(250.000000, 0.000000, "LD_SPAC:WHITE");
	TextDrawFont(DownLoadTextDraw[0], 4);
	TextDrawLetterSize(DownLoadTextDraw[0], 0.600000, 2.000000);
	TextDrawTextSize(DownLoadTextDraw[0], 140.000000, 20.000000);
	TextDrawSetOutline(DownLoadTextDraw[0], 1);
	TextDrawSetShadow(DownLoadTextDraw[0], 0);
	TextDrawAlignment(DownLoadTextDraw[0], 1);
	TextDrawColor(DownLoadTextDraw[0], 1296911816);
	TextDrawBackgroundColor(DownLoadTextDraw[0], 1687547391);
	TextDrawBoxColor(DownLoadTextDraw[0], 50);
	TextDrawUseBox(DownLoadTextDraw[0], 1);
	TextDrawSetProportional(DownLoadTextDraw[0], 1);
	TextDrawSetSelectable(DownLoadTextDraw[0], 0);

	DownLoadTextDraw[1] = TextDrawCreate(333.000000, 0.000000, "DownLoad Progress");
	TextDrawFont(DownLoadTextDraw[1], 2);
	TextDrawLetterSize(DownLoadTextDraw[1], 0.212500, 0.999999);
	TextDrawTextSize(DownLoadTextDraw[1], 499.000000, 327.000000);
	TextDrawSetOutline(DownLoadTextDraw[1], 0);
	TextDrawSetShadow(DownLoadTextDraw[1], 0);
	TextDrawAlignment(DownLoadTextDraw[1], 2);
	TextDrawColor(DownLoadTextDraw[1], -2016478465);
	TextDrawBackgroundColor(DownLoadTextDraw[1], 255);
	TextDrawBoxColor(DownLoadTextDraw[1], 50);
	TextDrawUseBox(DownLoadTextDraw[1], 0);
	TextDrawSetProportional(DownLoadTextDraw[1], 1);
	TextDrawSetSelectable(DownLoadTextDraw[1], 0);
	return 1;
}
N::RestPlayerPlayerDownLoadDraws(playerid,bool:destroy)
{
	if(destroy==true)
	{
	    SetSVarString("PTDD","PlayerDownLoadSign");
		if(PlayerDownLoadSign[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerDownLoadSign[playerid]);
        SetSVarString("PTDD","PlayerDownLoadProgress");
		if(PlayerDownLoadProgress[playerid]!=PlayerText:INVALID_TEXT_DRAW)PlayerTextDrawDestroy(playerid,PlayerDownLoadProgress[playerid]);
	}
	PlayerDownLoadSign[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerDownLoadProgress[playerid]=PlayerText:INVALID_TEXT_DRAW;
	PlayerDownLoadSignRate[playerid]=0;
	HidePlayerDownLoadBackGround(playerid);
	return 1;
}


