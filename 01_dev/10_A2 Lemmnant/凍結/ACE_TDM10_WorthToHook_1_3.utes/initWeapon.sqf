//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};

for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "AKS_74_Kobra";
_x addWeapon "Binocular";

_x addWeapon "ACE_BackPack";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ACE_DAGR";

[_x, "30Rnd_545x39_AK",6] call ACE_fnc_PackMagazine;
[_x, "SmokeShell",4] call ACE_fnc_PackMagazine;
[_x, "pipebomb",1] call ACE_fnc_PackMagazine;
[_x, "ACE_Medkit",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Bandage",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Epinephrine",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Morphine",4] call ACE_fnc_PackMagazine;
}

forEach [
		(units ftB0 select 0),
		(units ftB1 select 0),
		(units ftB2 select 0),
		(units ftB3 select 0),
		(units ftO0 select 0),
		(units ftO1 select 0),
		(units ftO2 select 0),
		(units ftO3 select 0)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 5-0 do {_x addMagazine "100Rnd_762x54_PK"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};

for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "PK";

_x addWeapon "ACE_BackPack";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ACE_DAGR";

[_x, "SmokeShell",4] call ACE_fnc_PackMagazine;

[_x, "ACE_Medkit",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Bandage",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Epinephrine",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Morphine",4] call ACE_fnc_PackMagazine;
}

forEach [
		(units ftB1 select 1),
		(units ftB2 select 1),
		(units ftB3 select 1),
		(units ftO1 select 1),
		(units ftO2 select 1),
		(units ftO3 select 1)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 6-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 3-0 do {_x addMagazine "100Rnd_762x54_PK"};
for "_i" from 1 to 1-0 do {_x addMagazine "HandGrenade"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};

for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "AKS_74_Kobra";

_x addWeapon "Binocular";
_x addWeapon "ACE_BackPack";
_x addWeapon "ACE_Earplugs";
_x addWeapon "ACE_DAGR";

[_x, "30Rnd_545x39_AK",6] call ACE_fnc_PackMagazine;
[_x, "SmokeShell",4] call ACE_fnc_PackMagazine;

[_x, "ACE_Medkit",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Bandage",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Epinephrine",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Morphine",4] call ACE_fnc_PackMagazine;

}

forEach [
		(units ftB1 select 2),
		(units ftB2 select 2),
		(units ftB3 select 2),
		(units ftO1 select 2),
		(units ftO2 select 2),
		(units ftO3 select 2)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 3-0 do {_x addMagazine "OG7"};

for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "AKS_74_Kobra";
_x addWeapon "RPG7V";

_x addWeapon "ACE_Earplugs";
_x addWeapon "ACE_DAGR";
}

forEach [
		(units ftB1 select 3),
		(units ftB2 select 3),
		(units ftB3 select 3),
		(units ftO1 select 3),
		(units ftO2 select 3),
		(units ftO3 select 3)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 3-0 do {_x addMagazine "OG7"};

for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "AKS_74_Kobra";

_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_BackPack";

[_x, "30Rnd_545x39_AK",6] call ACE_fnc_PackMagazine;
[_x, "SmokeShell",4] call ACE_fnc_PackMagazine;

[_x, "ACE_Medkit",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Bandage",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Epinephrine",4] call ACE_fnc_PackMagazine;
[_x, "ACE_Morphine",4] call ACE_fnc_PackMagazine;}

forEach [
		(units ftB1 select 4),
		(units ftB2 select 4),
		(units ftB3 select 4),
		(units ftO1 select 4),
		(units ftO2 select 4),
		(units ftO3 select 4)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 4-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 4-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 2-0 do {_x addMagazine "OG7"};

for "_i" from 1 to 4-0 do {_x addMagazine "ACE_Bandage"};
for "_i" from 1 to 4-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 4-0 do {_x addMagazine "ACE_Morphine"};

_x addWeapon "AKS_74_Kobra";
_x addWeapon "ACE_DAGR";
_x addWeapon "ACE_BackPack";

[_x, "30Rnd_545x39_AK",2] call ACE_fnc_PackMagazine;
[_x, "SmokeShell",4] call ACE_fnc_PackMagazine;

[_x, "ACE_Medkit",6] call ACE_fnc_PackMagazine;
[_x, "ACE_Bandage",6] call ACE_fnc_PackMagazine;
[_x, "ACE_Epinephrine",6] call ACE_fnc_PackMagazine;
[_x, "ACE_Morphine",6] call ACE_fnc_PackMagazine;}

forEach [
		(units ftB0 select 1),
		(units ftB1 select 5),
		(units ftB2 select 5),
		(units ftB3 select 5),
		(units ftO0 select 1),
		(units ftO1 select 5),
		(units ftO2 select 5),
		(units ftO3 select 5)
		];
//--------------------------------------------------------
{clearMagazinecargoGlobal _x,
clearWeaponcargoGlobal _x,
_x addMagazinecargoGlobal ["30Rnd_545x39_AK",30],
_x addMagazinecargoGlobal ["100Rnd_762x54_PK",10],
_x addMagazinecargoGlobal ["OG7",5],
_x addMagazinecargoGlobal ["HandGrenade",10],
_x addMagazinecargoGlobal ["SmokeShell",20],
_x addMagazinecargoGlobal ["pipebomb",8],
_x addMagazinecargoGlobal ["ACE_Medkit",10],
_x addMagazinecargoGlobal ["ACE_Bandage",10],
_x addMagazinecargoGlobal ["ACE_Epinephrine",10],
_x addMagazinecargoGlobal ["ACE_Morphine",10],}
foreach [	carB0,
			carB1,
			carB2,
			trackB,
			carO0,
			carO1,
			carO2,
			trackO];

//--------------------------------------------------------
{_x addweapon "ACE_Map_Tools",
_x addweapon "ACRE_PRC148"}forEach[
units ftB0 select 0,
units ftB0 select 1,
units ftB1 select 0,
units ftB1 select 1,
units ftB1 select 2,
units ftB1 select 3,
units ftB1 select 4,
units ftB1 select 5,
units ftB2 select 0,
units ftB2 select 1,
units ftB2 select 2,
units ftB2 select 3,
units ftB2 select 4,
units ftB2 select 5,
units ftB3 select 0,
units ftB3 select 1,
units ftB3 select 2,
units ftB3 select 3,
units ftB3 select 4,
units ftB3 select 5];
//--------------------------------------------------------
{
_x addweapon "ACE_Map_Tools",
_x addweapon "ACRE_PRC148_UHF"} forEach[
units ftO0 select 0,
units ftO0 select 1,
units ftO1 select 0,
units ftO1 select 1,
units ftO1 select 2,
units ftO1 select 3,
units ftO1 select 4,
units ftO1 select 5,
units ftO2 select 0,
units ftO2 select 1,
units ftO2 select 2,
units ftO2 select 3,
units ftO2 select 4,
units ftO2 select 5,
units ftO3 select 0,
units ftO3 select 1,
units ftO3 select 2,
units ftO3 select 3,
units ftO3 select 4,
units ftO3 select 5];

