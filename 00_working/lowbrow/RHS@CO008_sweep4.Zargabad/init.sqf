if(not isServer) exitWith{};

// TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	ACE�����E���W�I
ammobox additemCargoGlobal ["ACE_EarPlugs",20];
ammobox additemCargoGlobal ["ACRE_PRC152",20];
ammobox additemCargoGlobal ["ACE_Clacker",20];
ammobox additemCargoGlobal ["ACE_MapTools",20];

// ACE���i
medbox additemCargoGlobal ["ACE_tourniquet",20];

medbox additemCargoGlobal ["ACE_fieldDressing",100];
medbox additemCargoGlobal ["ACE_elasticBandage",50];
medbox additemCargoGlobal ["ACE_packingBandage",50];
medbox additemCargoGlobal ["ACE_quikclot",50];

medbox additemCargoGlobal ["ACE_salineIV_500",20];
medbox additemCargoGlobal ["ACE_salineIV_250",20];

medbox additemCargoGlobal ["ACE_epinephrine",30];
medbox additemCargoGlobal ["ACE_morphine",30];
medbox additemCargoGlobal ["ACE_atropine",30];

medbox additemCargoGlobal ["ACE_surgicalKit",12];
medbox additemCargoGlobal ["ACE_personalAidKit",12];

// �~�b�V�����p�����[�^�[�̐ݒ�
// Artycomputer����
enableEngineArtillery (paramsArray select 1);

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };