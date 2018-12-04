N::RestPlayerGameWeapons(playerid)
{
    ResetPlayerWeapons(playerid);
	forex(i,MAX_PLAYER_WEAPONS)
	{
	    PlayerGameWeapon[playerid][_WeaponID][i]=0;
	    PlayerGameWeapon[playerid][_WeaponAmmo][i]=0;
	}
	return 1;
}
N::BuyWeaponGiveWeapon(playerid,type,index)
{
	new weaponid=0,ammos=0;
	switch(type)
	{
	    case 1:
	    {
	        switch(index)
	        {
	            case 1:
				{
					weaponid=22;
					ammos=20;
				}
	            case 2:
				{
					weaponid=23;
					ammos=22;
				}
	            case 3:
				{
					weaponid=24;
					ammos=24;
				}
	        }
	    }
	    case 2:
	    {
	        switch(index)
	        {
	            case 1:
				{
					weaponid=25;
					ammos=7;
				}
	            case 2:
				{
					weaponid=26;
					ammos=8;
				}
	            case 3:
				{
					weaponid=27;
					ammos=9;
				}
	        }
	    }
	    case 3:
	    {
	        switch(index)
	        {
	            case 1:
				{
					weaponid=28;
					ammos=30;
				}
	            case 2:
				{
					weaponid=29;
					ammos=30;
				}
	            case 3:
				{
					weaponid=32;
					ammos=30;
				}
	        }
	    }
	    case 4:
	    {
	        switch(index)
	        {
	            case 1:
				{
					weaponid=30;
					ammos=30;
				}
	            case 2:
				{
					weaponid=31;
					ammos=30;
				}
	            case 3:
				{
					weaponid=33;
					ammos=30;
				}
	            case 4:
				{
					weaponid=34;
					ammos=30;
				}
				
	        }
	    }
	    case 6:
	    {
	        switch(index)
	        {
	            case 1:
				{
					weaponid=17;
					ammos=1;
				}
	            case 2:
				{
					weaponid=18;
					ammos=1;
				}
	            case 3:
				{
					weaponid=16;
					ammos=1;
				}
				case 4:
				{
				    if(PlayerGameRoom[playerid][_ShieldArmor]<50.0)
				    {
					    PlayerGameRoom[playerid][_ShieldArmor]=50.0;
						SetPlayerAttachedObject(playerid,8,18637,5,-0.003999,-0.080000,-0.132000,-126.300003,169.000076,-80.399940,1.000000,1.000000,1.000000);
						HidePlayerBuyGunMain(playerid);
						CancelSelectTextDraw(playerid);
						SetPlayerArmour(playerid,PlayerGameRoom[playerid][_ShieldArmor]+PlayerGameRoom[playerid][_BodyArmor]);
						return 1;
					}
				}
				case 5:
				{
				    if(PlayerGameRoom[playerid][_BodyArmor]<50.0)
				    {
					    PlayerGameRoom[playerid][_BodyArmor]=50.0;
						SetPlayerAttachedObject(playerid,9,19515,1,0.020000,0.031999,0.000000,0.000000,0.000000,0.000000,1.317000,1.235000,1.180000);
						HidePlayerBuyGunMain(playerid);
						CancelSelectTextDraw(playerid);
						SetPlayerArmour(playerid,PlayerGameRoom[playerid][_ShieldArmor]+PlayerGameRoom[playerid][_BodyArmor]);
                        return 1;
					}
				}
	        }
	    }
	}
	if(weaponid!=0)
	{
		if(IsPlayerHaveGameWeapon(playerid,weaponid)==0)
		{
			GivePlayerGameWeapon(playerid,weaponid,ammos);
			HidePlayerBuyGunMain(playerid);
			CancelSelectTextDraw(playerid);
		}
	}
	return 1;
}
N::IsPlayerHaveGameWeapon(playerid,WeaponID)
{
	forex(i,MAX_PLAYER_WEAPONS)
	{
	    if(PlayerGameWeapon[playerid][_WeaponID][i]==WeaponID&&PlayerGameWeapon[playerid][_WeaponAmmo][i]>0&&WeaponID!=0)
	    {
	        return 1;
	    }
	}
	return 0;
}
N::GivePlayerGameWeapon(playerid,WeaponID,Ammos)
{
	new Slot=WeaponSlot(WeaponID);
	switch(Slot)
	{
	    case 2:
	    {
	    	PlayerGameWeapon[playerid][_WeaponID][1]=WeaponID;
	    	PlayerGameWeapon[playerid][_WeaponAmmo][1]=Ammos;
	    }
	    case 3..6:
	    {
	    	PlayerGameWeapon[playerid][_WeaponID][0]=WeaponID;
	    	PlayerGameWeapon[playerid][_WeaponAmmo][0]=Ammos;
	    }
	    case 8:
	    {
	    	PlayerGameWeapon[playerid][_WeaponID][2]=WeaponID;
	    	PlayerGameWeapon[playerid][_WeaponAmmo][2]=Ammos;
	    }
	}
	ResetPlayerWeapons(playerid);
	forex(i,MAX_PLAYER_WEAPONS)
	{
		GivePlayerWeapon(playerid,PlayerGameWeapon[playerid][_WeaponID][i],PlayerGameWeapon[playerid][_WeaponAmmo][i]);
	}
	return 1;
}
stock WeaponSlot(weaponid)
{
    if(weaponid == 0){return 0;}
    else if(weaponid == 1){return 0;}
    else if(weaponid == 2){return 1;}
    else if(weaponid == 3){return 1;}
    else if(weaponid == 4){return 1;}
    else if(weaponid == 5){return 1;}
    else if(weaponid == 6){return 1;}
    else if(weaponid == 7){return 1;}
    else if(weaponid == 8){return 1;}
    else if(weaponid == 9){return 1;}
    else if(weaponid == 10){return 10;}
    else if(weaponid == 11){return 10;}
    else if(weaponid == 12){return 10;}
    else if(weaponid == 13){return 10;}
    else if(weaponid == 14){return 10;}
    else if(weaponid == 15){return 10;}
    else if(weaponid == 16){return 8;}
    else if(weaponid == 17){return 8;}
    else if(weaponid == 18){return 8;}
    else if(weaponid == 22){return 2;}
    else if(weaponid == 23){return 2;}
    else if(weaponid == 24){return 2;}
    else if(weaponid == 25){return 3;}
    else if(weaponid == 26){return 3;}
    else if(weaponid == 27){return 3;}
    else if(weaponid == 28){return 4;}
    else if(weaponid == 29){return 4;}
    else if(weaponid == 30){return 5;}
    else if(weaponid == 31){return 5;}
    else if(weaponid == 32){return 4;}
    else if(weaponid == 33){return 6;}
    else if(weaponid == 34){return 6;}
    else if(weaponid == 35){return 7;}
    else if(weaponid == 36){return 7;}
    else if(weaponid == 37){return 7;}
    else if(weaponid == 38){return 7;}
    else if(weaponid == 39){return 8;}
    else if(weaponid == 40){return 12;}
    else if(weaponid == 41){return 9;}
    else if(weaponid == 42){return 9;}
    else if(weaponid == 43){return 9;}
    else if(weaponid == 44){return 11;}
    else if(weaponid == 45){return 11;}
    else if(weaponid == 46){return 11;}
    else {return false;}
}
