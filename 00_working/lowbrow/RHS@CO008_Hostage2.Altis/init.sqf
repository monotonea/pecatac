if(not isServer) exitWith{};
// TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
//	�l���̏ꏊ�������_����
_random = floor(random 4);

IF (_random == 0) then{hostage Setpos [9610.37,15167.8,1.5]}; hostage setdir 320;	//	mHpos0
IF (_random == 1) then{hostage Setpos [9246.32,15820.2,5.5]}; hostage setdir 230;	//	mHpos1
IF (_random == 2) then{hostage SetPos [10265.5,15898.5,3.3]}; hostage setdir 330;	//	mHpos2
IF (_random == 3) then{hostage SetPos [11023.7,14838.2,1.5]}; hostage setdir 90;	//	mHpos3

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