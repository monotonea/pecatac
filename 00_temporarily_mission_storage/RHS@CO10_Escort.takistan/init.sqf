if(not isServer) exitWith{};

// TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;


//	ACE�����E���W�I
ammobox additemCargoGlobal ["ACE_DefusalKit",12];
ammobox additemCargoGlobal ["ACRE_PRC148",12];
ammobox additemCargoGlobal ["ACE_Clacker",12];

bmp additemCargoGlobal ["ACE_EarPlugs",12];
ZU additemCargoGlobal ["ACE_EarPlugs",12];
btr additemCargoGlobal ["ACE_EarPlugs",12];

// �ԗ��̂�������
_random = selectRandom [0,1,2];
	if (_random == 0) then 
	{
		deleteVehicle bmp;
		deleteVehicle btr;
	};
	if (_random == 1) then 
	{
		deleteVehicle btr;
		deleteVehicle ZU;
	};
	if (_random == 2) then 
	{
		deleteVehicle ZU;
		deleteVehicle bmp;
	};

// �g���b�N�̃f�R���[�V����
_cargo = "B_CargoNet_01_ammo_F" createVehicle position truck2; 
_cargo attachTo [truck2, [0, -2.5, 0.6]]; 
_cargo setVectorDir [0,0,1] ;

// �J�n���Ƀt�F�[�h�C��
titleText ["", "BLACK FADED", 0];
titleText ["CONVOY start within 10 minutes!", "BLACK IN", 8];

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };
