if(not isServer) exitWith{};
// TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// ���W�I�Ǝ���
ammobox additemCargoGlobal ["ACE_EarPlugs",10];
ammobox additemCargoGlobal ["itemradio",10];

//	UPS�̃}�[�J�[������
	"ups1" setMarkerAlpha 0;
	"ups2" setMarkerAlpha 0;

// �~�b�V�����p�����[�^�[�̐ݒ�
//	�~�b�V�����J�n�����̑I��
skiptime (paramsArray select 0);

//	AI�̃X�L����ݒ�
{
	_x setSkill (paramsArray select 1);
	_x setskill ["aimingAccuracy",(paramsArray select 2)];
} forEach allUnits;

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };