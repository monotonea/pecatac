//////////////////////////////////////////////////////////////////
//	equip_Strangers_Call.sqf		Origin and Element Created by Type90
//									Optimized by Monotone
//////////////////////////////////////////////////////////////////

//	�^�u�̕�������4�ɂ���ƌ��₷����
//	���̃X�N���v�g�̏ꍇJIP���Ƒ������Đݒ肳����

//////////////////////////////////////////////////////////////////
//	�����Ȋ����̃}���`�v���C�ɑΉ��������j�b�g�����҂��X�N���v�g
//////////////////////////////////////////////////////////////////

//	��̎����Ă� �v���C���[�̏������҂����Ƃ͂���������
if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};
//	��̑ҋ@���� �����Ɠ����Ȃ�
sleep 0.1;

//	�X�N���v�g�֓n�����z���0�Ԗڂ��擾����
//	�ᕶ	equipment = [this,"TypeLead"] execVM "equip_Strangers_Call.sqf";
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
_wepAR		= "SCAR_H_CQC_CCO";
_wepAR_GL	= "SCAR_H_STD_EGLM_Spect";
_wepAR_SD	= "SCAR_H_CQC_CCO_SD";
_wepMG		= "M249_EP1";
_wepSnp		= "M110_NVG_EP1";

_magAR		= "20Rnd_762x51_B_SCAR";
_magAR_SD	= "20Rnd_762x51_SB_SCAR";
_magMG		= "100Rnd_556x45_M249";
_magGL		= "1Rnd_HE_M203";
_magSnp		= "";

_wepAT		= "MAAWS";
_magAT_HEAT	= "MAAWS_HEAT";
_magAT_AP	= "MAAWS_HEDP";

_wepPis		= "M9";
_wepPis_SD	= "M9SD";
_magPis		= "15Rnd_9x19_M9";
_magPis_SD	= "15Rnd_9x19_M9SD";

_wepSMG		= "UZI_EP1";
_magSMG		= "30Rnd_9x19_UZI";

_gr			= "HandGrenade_West";
_smoke		= "SmokeShell";
_sc			= "Pipebomb";
_ruckL		= "US_Assault_Pack_EP1";
_ruckH		= "DE_Backpack_Specops_EP1";

_bandage	= "";
_morphine	= "";
_epine		= "";

_RangeF		= "Binocular_Vector";
_earplugs	= "";
//////////////////////////////////////////////////////////////////
//	��E�ŃX�C�b�`
switch (_unitType) do {
		case 	"TypeLeader":{
		//	�N���X������v�������̂��������[�u�E�F�|��
		removeAllWeapons _unit;
		//	�}�K�W���ނ̑���
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,
												_smoke,_smoke,
												_magPis,_magPis,_magPis,_magPis,_magPis,_magPis,_magPis,_magPis
											];
		//	����ނ̑���
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepPis,_RangeF,"NVGoggles"];
		//���W���p�o�b�N�p�b�N�̑���
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,6];
		(unitBackpack _unit) addMagazineCargo [_smoke,2];
	};
		case 	"TypeMedic":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
	};	
		case 	"TypeSAW":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magMG,_magMG,_magMG,_magMG,
												_gr,_gr,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepMG,"NVGoggles"];
	};
		case 	"TypeSAWa":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,2];
		(unitBackpack _unit) addMagazineCargo [_magMG,3];
	};
		case 	"TypeGR":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,_smoke,_smoke,
												_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_GL,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,4];
		(unitBackpack _unit) addMagazineCargo [_magGL,4];
	};
		case 	"TypeAT":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_magAT_HEAT,_magAT_HEAT,_magAT_HEAT
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepAT,"NVGoggles"];
	};
		case 	"TypeScout":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,
												_smoke,_smoke,
												_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepPis_SD,_RangeF,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckH;
		clearWeaponCargo unitBackpack _unit;
		clearMagazineCargo unitBackpack _unit;
		(unitBackpack _unit) addWeaponCargo [_wepSnp,1];
		(unitBackpack _unit) addMagazineCargo [_magAR,4];
	};
		case 	"TypeCrew":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
	};
		case 	"TypeCargoM2":{
		clearMagazineCargo _unit;
		clearWeaponCargo _unit;
		_unit addMagazineCargo	[_magAR,48];
		_unit addMagazineCargo	[_magAR_SD,24];
		_unit addMagazineCargo	[_magMG,12];
		_unit addMagazineCargo	[_magGL,12];
		_unit addMagazineCargo	[_gr,12];
		_unit addMagazineCargo	[_smoke,12];
	};
};

//	�v���C�}���B�E�F�|����I��������
_primaryWeapon = primaryWeapon _unit;
_unit selectWeapon _primaryWeapon;

//	�Ί�̎g�p���[�h����������ꍇ�ȉ��̕ςȃR�[�h���K�v�炵��
_muzzles = getArray( configFile >> "cfgWeapons" >> _primaryWeapon >> "muzzles" );
_unit selectWeapon ( _muzzles select 0 );
