//		������ݒ�
setviewdistance 3000;
setObjectViewDistance 2500;

if(not isServer) exitWith{};

//		TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
 //	ACE�����EACRE2���W�I
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_microDAGR",4];
ammobox additemCargoGlobal ["ACRE_PRC117F",4];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

//		�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };

