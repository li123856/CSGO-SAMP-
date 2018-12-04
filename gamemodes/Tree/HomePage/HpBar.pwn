#include <Pawn.RakNet>
enum B_Weapon_Data_Enum
{
	B_Weapon[13],
	B_Ammo[13],
	B_Spawn_Weapon[3],
	B_Spawn_Ammo[3],
	B_AmmoTD_UpdateTime
}
static B_Weapon_Data[MAX_PLAYERS][B_Weapon_Data_Enum];
new PlayerText:Ammo_TextDraw[MAX_PLAYERS] = {PlayerText:INVALID_TEXT_DRAW, ...};
static const B_Weapon_Slot[] =
{
	0, // Fist
	0, // Brass Knuckles
	1, // Golf Club
	1, // Nightstick
	1, // Knife
	1, // Baseball Bat
	1, // Shovel
	1, // Pool Cue
	1, // Katana
	1, // Chainsaw
	10, // Purple Dildo
	10, // Dildo
	10, // Vibrator
	10, // Small Vibrator
	10, // Flowers
	10, // Cane
	8, // Grenade
	8, // Tear Gas
	8, // Molotov Cocktail
	0, //
	0, //
	0, //
	2, // 9mm
	2, // Silenced 9mm
	2, // Desert Eagle
	3, // Shotgun
	3, // Sawnoff Shotgun
	3, // Combat Shotgun
	4, // Micro SMG
	4, // MP5
	5, // AK-47
	5, // M4
	4, // Tec-9
	6, // Country Rifle
	6, // Sniper Rifle
	7, // Rocket Launcher
	7, // Heat Seeker
	7, // Flamethrower
	7, // Minigun
	8, // Satchel Charge
	12, // Detonator
	9, // Spraycan
	9, // Fire Extinguisher
	9, // Camera
	11, // Night Vis. Goggles
	11, // Thermal Goggles
	11 // Parachute
};


const IPacket_DriverSync = 200;
const IPacket_OnFootSync = 207;
const IPacket_PassengerSync = 211;


const ORPC_ResetPlayerWeapons = 21;
const ORPC_GivePlayerWeapon = 22;
const ORPC_SetSpawnInfo = 68;
const ORPC_RequestClass = 128;
const ORPC_SetPlayerAmmo = 145;

N::CreateAmmoTextDraw(playerid)
{
    DestoryAmmoTextDraw(playerid);
    SetSVarString("CPTD","Ammo_TextDraw");
	Ammo_TextDraw[playerid] = CreatePlayerTextDraw(playerid, 520.850097, 63.333305, " ");
	PlayerTextDrawLetterSize(playerid, Ammo_TextDraw[playerid], 0.363750, 1.360833);
	PlayerTextDrawAlignment(playerid, Ammo_TextDraw[playerid], 2);
	PlayerTextDrawColor(playerid, Ammo_TextDraw[playerid], -1378294017);
	PlayerTextDrawSetShadow(playerid, Ammo_TextDraw[playerid], 0);
	PlayerTextDrawSetOutline(playerid, Ammo_TextDraw[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, Ammo_TextDraw[playerid], 255);
	PlayerTextDrawFont(playerid, Ammo_TextDraw[playerid], 1);
	PlayerTextDrawSetProportional(playerid, Ammo_TextDraw[playerid], 1);
	PlayerTextDrawSetShadow(playerid, Ammo_TextDraw[playerid], 0);
	PlayerTextDrawShow(playerid, Ammo_TextDraw[playerid]);
	return 1;
}
N::DestoryAmmoTextDraw(playerid)
{
	if(Ammo_TextDraw[playerid]!=PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawDestroy(playerid,Ammo_TextDraw[playerid]);
	}
	Ammo_TextDraw[playerid]=PlayerText:INVALID_TEXT_DRAW;
	return 1;
}
N::UpdateAmmoTextDraw(playerid,body[])
{
	if(Ammo_TextDraw[playerid]!=PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawSetString(playerid, Ammo_TextDraw[playerid], body);
		PlayerTextDrawShow(playerid, Ammo_TextDraw[playerid]);
	}
	return 1;
}
N::SvWeap@OnPlayerConnect(playerid)
{
	// Reset weapons and ammo
	BWH_memset(B_Weapon_Data[playerid][B_Weapon], 13, 0);
	BWH_memset(B_Weapon_Data[playerid][B_Ammo], 13, 0);

	B_Weapon_Data[playerid][B_Spawn_Weapon][0] = 0;
	B_Weapon_Data[playerid][B_Spawn_Weapon][1] = 0;
	B_Weapon_Data[playerid][B_Spawn_Weapon][2] = 0;

	CreateAmmoTextDraw(playerid);
	return 1;
}
N::SvWeap@OnPlayerDisConnect(playerid)
{
	// Reset weapons and ammo
	BWH_memset(B_Weapon_Data[playerid][B_Weapon], 13, 0);
	BWH_memset(B_Weapon_Data[playerid][B_Ammo], 13, 0);

	B_Weapon_Data[playerid][B_Spawn_Weapon][0] = 0;
	B_Weapon_Data[playerid][B_Spawn_Weapon][1] = 0;
	B_Weapon_Data[playerid][B_Spawn_Weapon][2] = 0;

	DestoryAmmoTextDraw(playerid);
	return 1;
}
N::SvWeap@OnPlayerUpdate(playerid)
{
	new BWH_time = gettime();

	if(B_Weapon_Data[playerid][B_AmmoTD_UpdateTime] < BWH_time)
	{
		B_Weapon_Data[playerid][B_AmmoTD_UpdateTime] = BWH_time;

		new BWH_weaponid = GetPlayerWeapon(playerid);

		if(B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_weaponid]] == BWH_weaponid)
		{
			if((BWH_weaponid > 21 && BWH_weaponid < 35) || BWH_weaponid == 38)
			{
				new BWH_ammo_str[7];

				format(BWH_ammo_str, sizeof(BWH_ammo_str), "%i", B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weaponid]]);
                UpdateAmmoTextDraw(playerid,BWH_ammo_str);
			}
			else
			{
			    UpdateAmmoTextDraw(playerid," ");
			}
		}
		else
		{
		    UpdateAmmoTextDraw(playerid," ");
		}
	}
	return 1;
}

N::SvWeap@OnPlayerSpawn(playerid)
{
	BWH_memset(B_Weapon_Data[playerid][B_Weapon], 13, 0);
	BWH_memset(B_Weapon_Data[playerid][B_Ammo], 13, 0);

	if(B_Weapon_Data[playerid][B_Spawn_Weapon][0] > 0)
	{
		B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][0]]] = true;
		B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][0]]] = B_Weapon_Data[playerid][B_Spawn_Ammo][0];
	}

	if(B_Weapon_Data[playerid][B_Spawn_Weapon][1] > 0)
	{
		B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][1]]] = true;
		B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][1]]] = B_Weapon_Data[playerid][B_Spawn_Ammo][1];
	}

	if(B_Weapon_Data[playerid][B_Spawn_Weapon][2] > 0)
	{
		B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][2]]] = true;
		B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[B_Weapon_Data[playerid][B_Spawn_Weapon][2]]] = B_Weapon_Data[playerid][B_Spawn_Ammo][2];
	}
	return 1;
}
public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	if(!B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[weaponid]]) // Not given by the server or removed? Don't sync the bullets.
	{
		return 0;
	}
	else // Otherwise...
	{
		if(B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[weaponid]] > 1) // The idea here is to remove the weapon if there is no server ammo, so bullets won't be synced.
		{
			B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[weaponid]]--;
		}
		else
		{
			B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[weaponid]] = false;
			SetPlayerAmmo(playerid, weaponid, 0); // To ensure it is removed.
		}
	}
	return 1;
}
public OnOutcomingRPC(playerid, rpcid, BitStream:bs)
{
	switch(rpcid)
	{
		case ORPC_ResetPlayerWeapons: // ResetPlayerWeapons
		{
			BWH_memset(B_Weapon_Data[playerid][B_Weapon], 13, 0);
			BWH_memset(B_Weapon_Data[playerid][B_Ammo], 13, 0);
		}
		case ORPC_GivePlayerWeapon: // GivePlayerWeapon
		{
			new BWH_weaponid, BWH_ammo;

			BS_ReadValue(
				bs,
				PR_UINT32, BWH_weaponid,
				PR_UINT32, BWH_ammo
			);

			if((BWH_weaponid == B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_weaponid]]) || (B_Weapon_Slot[BWH_weaponid] < 6 && B_Weapon_Slot[BWH_weaponid] > 2)) // We sum the ammo if weapon is the same or if slot is 3, 4 & 5.
			{
				if(B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weaponid]] > 0) // If ammo in that slot is above 0, we sum it (Take into account that empty weapons remain in weapon data, so this is actually needed).
				{
					BWH_ammo += B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weaponid]];
				}
			}

			B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_weaponid]] = BWH_weaponid;
			B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weaponid]] = BWH_ammo;

			BS_ResetReadPointer(bs);

			if((BWH_weaponid > 21 && BWH_weaponid < 35) || BWH_weaponid == 38) // Weapons that fire bullets only.
			{
				BS_SetWriteOffset(bs, 32);

				BS_WriteValue(
					bs,
					PR_UINT32, 8000000 // The client ammo doesn't matter. As long as it is not visible in the HUD and doesn't run out, that is good.
				);
			}
		}
		case ORPC_SetSpawnInfo: // SetSpawnInfo
		{
			BS_SetReadOffset(bs, 176);
			BS_SetWriteOffset(bs, 176);

			new
				BWH_SpawnWeapons1,
				BWH_SpawnWeapons2,
				BWH_SpawnWeapons3;

			// Since the spawn info is going to be set, we must remove the other weapons
			B_Weapon_Data[playerid][B_Spawn_Weapon][0] = 0;
			B_Weapon_Data[playerid][B_Spawn_Weapon][1] = 0;
			B_Weapon_Data[playerid][B_Spawn_Weapon][2] = 0;

			BS_ReadValue(
				bs,
				PR_INT32, BWH_SpawnWeapons1,
				PR_INT32, BWH_SpawnWeapons2,
				PR_INT32, BWH_SpawnWeapons3
			);

			if(BWH_SpawnWeapons1 > 0)
			{
				B_Weapon_Data[playerid][B_Spawn_Weapon][0] = BWH_SpawnWeapons1;
				BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][0]);

				if((BWH_SpawnWeapons1 > 21 && BWH_SpawnWeapons1 < 35) || BWH_SpawnWeapons1 == 38) // Weapons that fire bullets only.
				{
					BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
				}
			}
			else
			{
				BS_SetReadOffset(bs, 208);
				BS_SetWriteOffset(bs, 208);
			}

			if(BWH_SpawnWeapons2 > 0)
			{
				B_Weapon_Data[playerid][B_Spawn_Weapon][1] = BWH_SpawnWeapons2;
				BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][1]);

				if((BWH_SpawnWeapons2 > 21 && BWH_SpawnWeapons2 < 35) || BWH_SpawnWeapons2 == 38) // Weapons that fire bullets only.
				{
					BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
				}
			}
			else
			{
				BS_SetReadOffset(bs, 240);
				BS_SetWriteOffset(bs, 240);
			}

			if(BWH_SpawnWeapons3 > 0)
			{
				B_Weapon_Data[playerid][B_Spawn_Weapon][2] = BWH_SpawnWeapons3;
				BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][2]);

				if((BWH_SpawnWeapons3 > 21 && BWH_SpawnWeapons3 < 35) || BWH_SpawnWeapons3 == 38) // Weapons that fire bullets only.
				{
					BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
				}
			}

			BS_ResetReadPointer(bs);
		}
		case ORPC_RequestClass: // RequestClass
		{
			new BWH_RequestOutcome; // If false, the class id is invalid, so the rest of the bitstream is empty

			BS_ReadValue(
				bs,
				PR_UINT8, BWH_RequestOutcome
			);

			if(BWH_RequestOutcome)
			{
				// Since the spawn info is going to be set, we must remove the other weapons
				B_Weapon_Data[playerid][B_Spawn_Weapon][0] = 0;
				B_Weapon_Data[playerid][B_Spawn_Weapon][1] = 0;
				B_Weapon_Data[playerid][B_Spawn_Weapon][2] = 0;

				new
					BWH_SpawnWeapons1,
					BWH_SpawnWeapons2,
					BWH_SpawnWeapons3;

				BS_SetReadOffset(bs, 184);
				BS_SetWriteOffset(bs, 184);

				BS_ReadValue(
					bs,
					PR_INT32, BWH_SpawnWeapons1,
					PR_INT32, BWH_SpawnWeapons2,
					PR_INT32, BWH_SpawnWeapons3
				);

				if(BWH_SpawnWeapons1 > 0)
				{
					B_Weapon_Data[playerid][B_Spawn_Weapon][0] = BWH_SpawnWeapons1;
					BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][0]);

					if((BWH_SpawnWeapons1 > 21 && BWH_SpawnWeapons1 < 35) || BWH_SpawnWeapons1 == 38) // Weapons that fire bullets only.
					{
						BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
					}
				}
				else
				{
					BS_SetReadOffset(bs, 216);
					BS_SetWriteOffset(bs, 216);
				}

				if(BWH_SpawnWeapons2 > 0)
				{
					B_Weapon_Data[playerid][B_Spawn_Weapon][1] = BWH_SpawnWeapons2;
					BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][1]);

					if((BWH_SpawnWeapons2 > 21 && BWH_SpawnWeapons2 < 35) || BWH_SpawnWeapons2 == 38) // Weapons that fire bullets only.
					{
						BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
					}
				}
				else
				{
					BS_SetReadOffset(bs, 248);
					BS_SetWriteOffset(bs, 248);
				}

				if(BWH_SpawnWeapons3 > 0)
				{
					B_Weapon_Data[playerid][B_Spawn_Weapon][2] = BWH_SpawnWeapons3;
					BS_ReadInt32(bs, B_Weapon_Data[playerid][B_Spawn_Ammo][2]);

					if((BWH_SpawnWeapons3 > 21 && BWH_SpawnWeapons3 < 35) || BWH_SpawnWeapons3 == 38) // Weapons that fire bullets only.
					{
						BS_WriteInt32(bs, 8000000); // We must make sure the player doesn't run out of ammo and that it doesn't show in the HUD.
					}
				}
			}

			BS_ResetReadPointer(bs);
		}
		case ORPC_SetPlayerAmmo: // SetPlayerAmmo
		{
			new BWH_weaponid, BWH_ammo;

			BS_ReadValue(
				bs,
				PR_UINT8, BWH_weaponid,
				PR_INT16, BWH_ammo
			);

			if(BWH_ammo > 0 && ((BWH_weaponid > 21 && BWH_weaponid < 35) || BWH_weaponid == 38))
			{
				B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weaponid]] = BWH_ammo;
				return 0; // Don't allow it to be sent.
			}
			else
			{
				if(BWH_weaponid > 15) // Melee weaps can't be removed by setting their ammo to 0.
				{
					B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_weaponid]] = 0;
				}
			}

			BS_ResetReadPointer(bs);
		}
	}
	return 1;
}
public OnIncomingPacket(playerid, packetid, BitStream:bs)
{
	switch(packetid)
	{
		case IPacket_OnFootSync:
		{
			new BWH_OnFootData[PR_OnFootSync];

			BS_IgnoreBits(bs, 8);

			BS_ReadOnFootSync(bs, BWH_OnFootData);
			BS_ResetReadPointer(bs);

			if(BWH_OnFootData[PR_weaponId] != 46 && BWH_OnFootData[PR_weaponId] != 40 && BWH_OnFootData[PR_weaponId] > 0 && B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_OnFootData[PR_weaponId]]] != BWH_OnFootData[PR_weaponId])
			{
				BS_SetWriteOffset(bs, 8);
				BWH_OnFootData[PR_weaponId] = 0;
				BS_WriteOnFootSync(bs, BWH_OnFootData);
			}
		}
		case IPacket_PassengerSync:
		{
			new BWH_passengerData[PR_PassengerSync];

			BS_IgnoreBits(bs, 8);

			BS_ReadPassengerSync(bs, BWH_passengerData);
			BS_ResetReadPointer(bs);

			if(BWH_passengerData[PR_weaponId] != 46 && BWH_passengerData[PR_weaponId] != 40 && BWH_passengerData[PR_weaponId] > 0 && B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_passengerData[PR_weaponId]]] != BWH_passengerData[PR_weaponId])
			{
				BS_SetWriteOffset(bs, 8);
				BWH_passengerData[PR_weaponId] = 0;
				BS_WritePassengerSync(bs, BWH_passengerData);
			}
		}
		case IPacket_DriverSync:
		{
			new BWH_inCarData[PR_InCarSync];

			BS_IgnoreBits(bs, 8);

			BS_ReadInCarSync(bs, BWH_inCarData);
			BS_ResetReadPointer(bs);

			if(BWH_inCarData[PR_weaponId] != 46 && BWH_inCarData[PR_weaponId] != 40 && BWH_inCarData[PR_weaponId] > 0 && B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_inCarData[PR_weaponId]]] != BWH_inCarData[PR_weaponId])
			{
				BS_SetWriteOffset(bs, 8);
				BWH_inCarData[PR_weaponId] = 0;
				BS_WriteInCarSync(bs, BWH_inCarData);
			}
		}
	}
    return 1;
}

stock BWH_GetPlayerWeaponData(playerid, slot, &weapon, &ammo)
{
	if(!IsPlayerConnected(playerid) || (slot < 0 || slot > 12))
	{
		return 0;
	}

	GetPlayerWeaponData(playerid, slot, weapon, ammo);

	weapon = B_Weapon_Data[playerid][B_Weapon][slot];

	if((weapon > 21 && weapon < 35) || weapon == 38)
	{
		ammo = B_Weapon_Data[playerid][B_Ammo][slot];
	}
	return 1;
}

stock BWH_GetPlayerAmmo(playerid)
{
	if(!IsPlayerConnected(playerid))
	{
		return 0;
	}

	new BWH_weapon = GetPlayerWeapon(playerid);

	if(B_Weapon_Data[playerid][B_Weapon][B_Weapon_Slot[BWH_weapon]] == BWH_weapon)
	{
		if((BWH_weapon > 21 && BWH_weapon < 35) || BWH_weapon == 38)
		{
			return B_Weapon_Data[playerid][B_Ammo][B_Weapon_Slot[BWH_weapon]];
		}
		else
		{
			return GetPlayerAmmo(playerid);
		}
	}
	return 0;
}

/*Internal*/
static BWH_memset(variable[], cells, value) // Slice - http://forum.sa-mp.com/showpost.php?p=1974747
{
	new address;

	#emit LOAD.S.pri  variable
	#emit STOR.S.pri  address

	BWH_raw_memset(address, cells, value);
}

static BWH_raw_memset(address, cells, value) // Slice - http://forum.sa-mp.com/showpost.php?p=1974747
{
	new param_adr;

	#emit LCTRL       6
	#emit MOVE.alt
	#emit LCTRL       0
	#emit ADD
	#emit MOVE.alt
	#emit LCTRL       1
	#emit SUB.alt
	#emit ADD.C       92
	#emit STOR.S.pri  param_adr
	#emit LOAD.S.pri  cells
	#emit SHL.C.pri   2
	#emit SREF.S.pri  param_adr

	#emit LOAD.S.alt  address
	#emit LOAD.S.pri  value
	#emit FILL        0
}

