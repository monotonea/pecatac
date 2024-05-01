//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 1-0 do {_x addMagazine "ACE_Battery_Rangefinder"};
for "_i" from 1 to 4-0 do {_x addMagazine "1Rnd_HE_M203"};
for "_i" from 1 to 2-0 do {_x addMagazine "1Rnd_Smokeyellow_M203"};
for "_i" from 1 to 2-0 do {_x addMagazine "1Rnd_SmokeGreen_M203"};
_x addWeapon "M4A1_HWS_GL";
_x addWeapon "Binocular_Vector";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";
_x addWeapon "ACRE_PRC117F";
	}

forEach [
		(units grpB select 0),
		(units grpB select 1)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "100Rnd_762x51_M240"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M240";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";}

forEach [
		(units grpB select 2)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 3-0 do {_x addMagazine "100Rnd_762x51_M240"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";}

forEach [
		(units grpB select 3)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 3-0 do {_x addMagazine "SMAW_HEDP"};
for "_i" from 1 to 8-0 do {_x addMagazine "ACE_SMAW_SPOTTING"};
_x addWeapon "M4A1_Aim";
_x addWeapon "SMAW";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";}

forEach [
		(units grpB select 4)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 3-0 do {_x addMagazine "SMAW_HEDP"};
for "_i" from 1 to 8-0 do {_x addMagazine "ACE_SMAW_SPOTTING"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";}

forEach [
		(units grpB select 5)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_556x45_Stanag"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade_West"};
for "_i" from 1 to 1-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "M4A1_Aim";
_x addWeapon "NVgoggles";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ItemGPS";}

forEach [
		(units grpB select 6)
		];
//--------------------------------------------------------

clearMagazinecargoGlobal Bird;
clearWeaponcargoGlobal Bird;
Bird addWeaponcargoGlobal	["ACRE_PRC117F",3];
Bird addMagazinecargoGlobal ["30Rnd_556x45_Stanag",40];
Bird addMagazinecargoGlobal ["100Rnd_762x51_M240",10];
Bird addMagazinecargoGlobal ["SMAW_HEDP",10];
Bird addMagazinecargoGlobal ["HandGrenade_West",20];
Bird addMagazinecargoGlobal ["SmokeShell",20];
Bird addMagazinecargoGlobal ["1Rnd_HE_M203",30];
Bird addMagazinecargoGlobal ["1Rnd_Smokeyellow_M203",5];
Bird addMagazinecargoGlobal ["1Rnd_SmokeGreen_M203",5];
Bird addMagazinecargoGlobal ["pipebomb",5];
Bird addMagazinecargoGlobal ["ACE_SMAW_Spotting",10];

//--------------------------------------------------------