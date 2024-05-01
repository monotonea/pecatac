//////////////////////////////////////////////////////////////////
//	equip_Supreme_Pacifier.sqf		Origin and Element Created by Type90
//									Optimized by Monotone
//////////////////////////////////////////////////////////////////
//	��̎����Ă� �v���C���[�̏������҂����Ƃ͂���������
if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};
//	��̑ҋ@���� �����Ɠ����Ȃ�
sleep 0.1;

//	�X�N���v�g�֓n�����z���0�Ԗڂ��擾����
//	�ᕶ	equipment = [this,TypeCommander] execVM "equip_Supreme_Pacifier.sqf";
_unit	  = _this select 0;
_unitType = _this select 1;
//	���j�b�g�̐����҂�(�T�[�o�ł͕K�v�Ȃ��炵��)
if (!isServer) then {
	//	�v���C���[�̃C���X�^���X�͎����̃N���C�A���g��Ń��[�J��
	//	������AI�̃��[�_�Ȃ�`�[�������o�͎����̃N���C�A���g��Ń��[�J��
	//	AI���[�_�̓T�[�o��Ń��[�J��

	//					�v���C���[		�v���C���[�����[�_�̃O���[�v��AI		AI�����[�_�̃O���[�v��AI
	//	�N���C�A���g		��					��										�~
	//	�T�[�o				�~					�~										��
	if ( (_unit==player) || (player == leader group _unit) ) then
	{
		waitUntil { local _unit };
	};
	//	���[�_���v���C���[�Ń`�[����AI���j�b�g�������Ƒ������s����ꍇ���������̂ŃE�F�C�g�ݒ�
	sleep 0.1;
};
//	���[�J���ɖ����Ȃ珈�����Ȃ��ŏI��
if (!local _unit) exitwith {};
//////////////////////////////////////////////////////////////////
//	�����܂�

//////////////////////////////////////////////////////////////////
_wepAR		= "AK_74";
_wepAR_Sc	= "ACE_AK74M_PSO";
_wepAR_GL	= "AK_74_GL";
_wepMG		= "PK";
_wepSVD		= "SVD_CAMO";

_magAR		= "30Rnd_545x39_AK";
_magAR_t	= "ACE_30Rnd_545x39_T_AK";
_magMG		= "100Rnd_762x54_PK";
_magGL		= "1Rnd_HE_GP25";
_magSVD		= "ACE_10Rnd_762x54_T_SVD";

_wepAT		= "ACE_RPG7V_PGO7";
_magAT_HEAT	= "PG7V";
_magAT_AP	= "OG7";

_wepSMG		= "ACE_Scorpion";
_magSMG		= "ACE_20Rnd_765x17_vz61";

_gr			= "HandGrenade_East";
_smoke		= "SmokeShell";
_sc			= "Pipebomb";
_ruck		= "ACE_Rucksack_RD54";

_medkit	= "ACE_MEDKIT";
_bandage	= "ACE_Bandage";
_morphine	= "ACE_Morphine";
_epine		= "ACE_Epinephrine";

_earplugs	= "ACE_Earplugs";
//////////////////////////////////////////////////////////////////
//	��E�ŃX�C�b�`
switch (_unitType) do {
		case 	"TypeCommander":{
		//	�N���X������v�������̂��������[�u�E�F�|��
		removeAllWeapons _unit;
		//	�}�K�W���ނ̑���
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		//	����ނ̑���
		{ _unit addWeapon _x }		forEach	[_wepAR_Sc,"Binocular","NVGoggles",_ruck,_earplugs];
		//�w���ɓ�������
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			3] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		3] 	call ACE_fnc_PackMagazine;
		[ _unit, _sc,			1]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeMedic":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_smoke,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		10]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeLeader":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_gr,_smoke,_smoke,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_Sc,"Binocular",_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAT_HEAT,	1] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAT_AP,		1] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _sc,			1]	call ACE_fnc_PackMagazine;
	};
	
		case 	"TypeMachinegunner":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magMG,_magMG,_magMG,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepMG,_ruck,_earplugs];
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _magMG,		2] 	call ACE_fnc_PackMagazine;
	};
		case 	"TypeGrenadier":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_gr,_smoke,_smoke,
												_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_GL,_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magGL,		8]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeATSpecialist":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_magAT_HEAT,_magAT_HEAT,_magAT_HEAT,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepAT,_earplugs];
	};
		case 	"TypeSniper":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,
												_smoke,_gr,
												_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepSVD,_wepSMG,_ruck,_earplugs];
		[ _unit, _magSVD,		6] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magSMG,		8]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
	
};

//	�v���C�}���B�E�F�|����I��������
_primaryWeapon = primaryWeapon _unit;
_unit selectWeapon _primaryWeapon;

//	�Ί�̎g�p���[�h����������ꍇ�ȉ��̕ςȃR�[�h���K�v�炵��
_muzzles = getArray( configFile >> "cfgWeapons" >> _primaryWeapon >> "muzzles" );
_unit selectWeapon ( _muzzles select 0 );
