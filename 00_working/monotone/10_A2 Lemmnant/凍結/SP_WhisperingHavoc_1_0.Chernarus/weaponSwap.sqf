//------------------------------------------------------------
/*
�g���֐�	
weaponStocked:�X�g�b�N����Ă�����̕���B�f�[�^�^�̓X�g�����O�B
magM4:�X�g�b�N����Ă���M4�e��̐��B�f�[�^�^�̓i���o�[�B
magDMR:�X�g�b�N����Ă���DMR�e��̐��B�f�[�^�^�̓i���o�[�B
*/
//------------------------------------------------------------
//�e�򐔂�ۑ�������Ō��ݑ�����DMR�ƒu�������BweaponStocked��DMR�ɂȂ��Ă���̂�init.sqf�ł̒�`�B

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
//�e�򐔂�ۑ�������Ō��ݑ�����M4�ƒu�������B��ԍŏ���DMR�e�򐔂�init.sqf�ɒ�`���ꂽmagDMR=8�����p�B

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