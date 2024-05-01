/*
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 1-0 do {_x addMagazine "ACE_Battery_Rangefinder"};
for "_i" from 1 to 4-0 do {_x addMagazine "1Rnd_HE_M203"};
for "_i" from 1 to 2-0 do {_x addMagazine "FlareRed_M203"};
for "_i" from 1 to 2-0 do {_x addMagazine "FlareGreen_M203"};
_x addWeapon "M4A1_HWS_GL";
_x addWeapon "Binocular_Vector";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";
_x addWeapon "ACE_PRC119";
	}

forEach [
		(units grpA select 0),
		(units grpA select 1)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "100Rnd_762x51_M240"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M240";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";}

forEach [
		(units grpA select 2)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 3-0 do {_x addMagazine "100Rnd_762x51_M240"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";}

forEach [
		(units grpA select 3)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 3-0 do {_x addMagazine "SMAW_HEDP"};
_x addWeapon "M4A1_Aim";
_x addWeapon "SMAW";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";}

forEach [
		(units grpA select 4)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";}

forEach [
		(units grpA select 5)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 1-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ItemGPS";}

forEach [
		(units grpA select 6)
		];
/--------------------------------------------------------
*/
clearMagazineCargo EarlyBird;
clearWeaponCargo EarlyBird;
EarlyBird addMagazineCargo ["30Rnd_556x45_Stanag",40];
EarlyBird addMagazineCargo ["100Rnd_762x51_M240",10];
EarlyBird addMagazineCargo ["SMAW_HEDP",10];
EarlyBird addMagazineCargo ["HandGrenade_West",20];
EarlyBird addMagazineCargo ["SmokeShell",20];
EarlyBird addMagazineCargo ["1Rnd_HE_M203",20];
EarlyBird addMagazineCargo ["FlareRed_M203",10];
EarlyBird addMagazineCargo ["FlareGreen_M203",10];
EarlyBird addMagazineCargo ["pipebomb",3];
//--------------------------------------------------------