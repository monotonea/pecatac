if(not isServer) exitWith{};
 // TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	ACE����
ammobox additemCargoGlobal ["ACE_EntrenchingTool",12];
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_DAGR",2];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

// �ԗ��̂�������
_random = selectRandom [0,1,2];
if (_random == 0) then
{
	deleteVehicle bmp;
	deleteVehicle btr;
};
if (_random == 1) then 
{
	deleteVehicle bmp;
	deleteVehicle zsu;
};
if (_random == 2) then 
{
	deleteVehicle btr;
	deleteVehicle zsu;
};

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };