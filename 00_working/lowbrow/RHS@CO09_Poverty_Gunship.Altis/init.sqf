//    ������ݒ�
setviewdistance 3000;
setObjectViewDistance 2500;

// ����ȍ~�̓T�[�o�[�������Ŏ��s
if(not isServer) exitWith{};

// �C���s�@�ɂ�������
execVM "Scripts\Gunship.sqf";

//	TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// OPFOR���j�b�g�S���Ɏ����ƃX�R�b�v��z��
{
	if(side _x == east) then
	{
		_x additem "ACE_EarPlugs";
		_x additem "ACE_MicroDAGR";
		_x additem "ACRE_PRC152";
	};
} foreach (allUnits);

//    �v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };