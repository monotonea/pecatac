//	VD�̐ݒ�
	setViewDistance 2500;
	setObjectViewDistance 2000;

if(not isServer) exitWith{};
 // TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["itemradio",12];

//	UPS�̃}�[�J�[������
	"ups1" setMarkerAlpha 0;
	"ups2" setMarkerAlpha 0;

//		�~�b�V�����p�����[�^�[�̐ݒ�
//		��蕨�̑I��
if ((paramsArray select 0) == 1) then
{
		deleteVehicle bmp1;
		deleteVehicle bmd1r;
};
if ((paramsArray select 0) == 2) then
{
		deleteVehicle btr;
		deleteVehicle bmd1r;
};
if ((paramsArray select 0) == 3) then
{
		deleteVehicle btr;
		deleteVehicle bmp1;
};


//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };