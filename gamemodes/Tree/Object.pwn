N::ScenesObjectInt()
{
	CreateObject(-2039,-653.33,444.741,125.528,0.0,0.0,0.0,1000.0);
	return 1;
}
stock tokenbydelim(strings[], return_str[], delim, start_index)
{
    new x = 0;
    while(strings[start_index] != EOS && strings[start_index] != delim)
    {
        return_str[x] = strings[start_index];
        x ++;
        start_index ++;
    }
    return_str[x] = EOS;
    if(strings[start_index] == EOS) start_index = (-1);
    return start_index;
}
N::DestoryGameRoomMap(GameID)
{
    foreach(new i:GameRoomMapObjects[GameID])
    {
        if(IsValidDynamicObject(GameRoomMapObjects[GameID][i]))DestroyDynamicObject(GameRoomMapObjects[GameID][i]);
    }
    Iter_Clear(GameRoomMapObjects[GameID]);
    return 1;
}
enum
{
    OBJECT_NONE,
	OBJECT_DYNAMIC,
	OBJECT_GENERAL
}
stock ClearObjectCodeLine(line[],Type)
{
	switch(Type)
	{
	    case OBJECT_DYNAMIC:strdel(line, 0, 20);
	    case OBJECT_GENERAL:strdel(line, 0, 13);
	}
    return 1;
}
N::GetObjectCodeType(line[])
{
	if(strfind(line, "CreateDynamicObject", false) != -1)return OBJECT_DYNAMIC;
    if(strfind(line, "CreateObject", false) != -1)return OBJECT_GENERAL;
    return OBJECT_NONE;
}
N::LoadGameRoomMapFromFile(GameID)
{
	new TickCountStart=GetTickCount();
    DestoryGameRoomMap(GameID);
    
    formatex64("地图组/%s.pwn",Map[GameRoom[GameID][_MapID]][_Name]);
    if(fexist(string64))
    {
	    new File:fileHandle = fopen(string64, io_read);
	    if(fileHandle)
	    {
	        new idx,line[64],buf[128],Type;
	        new modelid,Float:x,Float:y,Float:z,Float:rx,Float:ry,Float:rz;
	        while(fread(fileHandle, buf))
	        {
	            Type=GetObjectCodeType(buf);
	            if (Type==OBJECT_DYNAMIC||Type==OBJECT_GENERAL)
	            {
	                if(ClearObjectCodeLine(buf,Type))
	                {
		                if(Iter_Count(GameRoomMapObjects[GameID])<MAX_MAPOBJS)
		                {
			                idx = 0;
			                idx = tokenbydelim(buf, line, ',', idx);modelid = strval(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));x = floatstr(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));y = floatstr(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));z = floatstr(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));rx = floatstr(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));ry = floatstr(line);
			                idx = tokenbydelim(buf, line, ',', (idx + 1));rz = floatstr(line);
			                new i=Iter_Free(GameRoomMapObjects[GameID]);
			                GameRoomMapObjects[GameID][i]=CreateDynamicObject(modelid,x,y,z,rx,ry,rz,GameRoomWorld(GameID),-1,-1,2000.0);
							Iter_Add(GameRoomMapObjects[GameID],i);
	                    }
                    }
	            }
	        }
	        fclose(fileHandle);
	        formatex128("房间[%s],地图名[%s],共计[%i]个OBJ,耗时[%s]",GameRoom[GameID][_GameKey],Map[GameRoom[GameID][_MapID]][_Name],Iter_Count(GameRoomMapObjects[GameID]),ReturnConvertMs(GetTickCount()-TickCountStart));
	        printf(string128);
	    }
	}
    return 1;
}


