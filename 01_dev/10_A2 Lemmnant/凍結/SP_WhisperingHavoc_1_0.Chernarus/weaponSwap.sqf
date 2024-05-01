//------------------------------------------------------------
/*
使う関数	
weaponStocked:ストックされている方の武器。データ型はストリング。
magM4:ストックされているM4弾薬の数。データ型はナンバー。
magDMR:ストックされているDMR弾薬の数。データ型はナンバー。
*/
//------------------------------------------------------------
//弾薬数を保存した上で現在装備をDMRと置き換え。weaponStockedがDMRになっているのはinit.sqfでの定義。

if
	(weaponStocked == "DMR")
exitWith
	{
		magM4 = {_x == "30Rnd_556x45_StanagSD"} count (magazines aP);
		
		aP removeMagazines	"30Rnd_556x45_StanagSD";
		aP removeWeapon	"M4A1_AIM_SD_CAMO";
		
		weaponStocked = "M4";
		
		aP playMove "WeaponMagazineReloadKneel";
		
		for "_i" from 1 to (magDMR)-0 do {aP addMagazine "20Rnd_762x51_DMR"};
		aP addWeapon "DMR";
		aP selectWeapon"DMR";
	};
//------------------------------------------------------------
//弾薬数を保存した上で現在装備をM4と置き換え。一番最初のDMR弾薬数はinit.sqfに定義されたmagDMR=8を引用。

if
	(weaponStocked == "M4")
exitWith
	{
		magDMR = {_x == "20Rnd_762x51_DMR"} count (magazines aP);
		
		aP removeMagazines	"20Rnd_762x51_DMR";
		aP removeWeapon	"DMR";

		weaponStocked = "DMR";
		
		aP playMove "WeaponMagazineReloadKneel";
		
		for "_i" from 1 to (magM4)-0 do {aP addMagazine "30Rnd_556x45_StanagSD"};
		aP addWeapon "M4A1_AIM_SD_CAMO";
		
		aP selectWeapon"M4A1_AIM_SD_CAMO";
		_muzzles = getArray( configFile >> "cfgWeapons" >> "M4A1_AIM_SD_CAMO" >> "muzzles" );
		aP selectWeapon ( _muzzles select 0 );
	};
//------------------------------------------------------------