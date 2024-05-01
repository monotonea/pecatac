//-----------------------------------------------------
removeallweapons aP;

for "_i" from 1 to 8-0 do {aP addMagazine "30Rnd_556x45_StanagSD"};

for "_i" from 1 to 2-0 do {aP addMagazine "HandGrenade_West"};
for "_i" from 1 to 2-0 do {aP addMagazine "SmokeShell"};

aP addweapon "M4A1_AIM_SD_CAMO";
aP addweapon "NVgoggles";
aP addweapon "Binocular";

aP selectWeapon"M4A1_AIM_SD_CAMO";
_muzzles = getArray( configFile >> "cfgWeapons" >> "M4A1_AIM_SD_CAMO" >> "muzzles" );
aP selectWeapon ( _muzzles select 0 );