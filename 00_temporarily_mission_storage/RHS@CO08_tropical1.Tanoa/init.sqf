if(not isServer) exitWith{};


//	TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
//	ACE����
ammobox additemCargoGlobal ["ACE_EarPlugs",10];

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };