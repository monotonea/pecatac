{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_762x39_AK47"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Medkit"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
_x addWeapon "AK_47_M";
_x addWeapon "Binocular";
_x addWeapon "ItemGPS";}

forEach [
		(units ft1 select 0),
		(units ft4 select 0)
		];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_762x39_AK47"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Medkit"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
_x addWeapon "AK_47_M";}

forEach [(units ft1 select 1),
		 (units ft1 select 2),
		 (units ft2 select 0),
		 (units ft2 select 1),
		 (units ft2 select 2),
		 (units ft2 select 3),
		 (units ft3 select 0)];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_545x39_AK"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"};
for "_i" from 1 to 8-0 do {_x addMagazine "1Rnd_HE_GP25"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
_x addWeapon "AK_74_GL";}

forEach [(units ft3 select 1),
		 (units ft4 select 1)];
//--------------------------------------------------------
{removeAllWeapons _x; 
for "_i" from 1 to 4-0 do {_x addMagazine "100Rnd_762x54_PK"}; 
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"}; 
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"}; 
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Medkit"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
_x addWeapon "PK";}

forEach [(units ft3 select 2),
		 (units ft3 select 3)];
//--------------------------------------------------------
{removeAllWeapons _x; 
for "_i" from 1 to 8-0 do {_x addMagazine "30Rnd_762x39_AK47"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Medkit"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
_x addWeapon "AK_47_M";
_x addBackpack "TK_Assault_Pack_EP1";
(unitBackpack _x) addMagazineCargo ["100Rnd_762x54_PK",4];}

forEach [(units ft3 select 4)];
//--------------------------------------------------------
{removeAllWeapons _x;
for "_i" from 1 to 8-0 do {_x addMagazine "10Rnd_762x54_SVD"};
for "_i" from 1 to 2-0 do {_x addMagazine "HandGrenade_East"};
for "_i" from 1 to 2-0 do {_x addMagazine "SmokeShell"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Medkit"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Morphine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Epinephrine"};
for "_i" from 1 to 2-0 do {_x addMagazine "ACE_Bandage"};
_x addWeapon "SVD";}

forEach [(units ft3 select 5)];