//		�~�b�V�����p�����[�^�I�����T�[�o�[�������ōs��
if(not isServer) exitWith{};

 // TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
 //	ACE����
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["itemradio",12];

//		�~�b�V�����J�n�����̑I��
skiptime (paramsArray select 0);

//		�V�C�̑I��
if ((paramsArray select 1) == 0) then {0 setOvercast 0};
if ((paramsArray select 1) == 1) then {0 setOvercast 0.1};
if ((paramsArray select 1) == 2) then {0 setOvercast 0.2};
if ((paramsArray select 1) == 3) then {0 setOvercast 0.3};
if ((paramsArray select 1) == 4) then {0 setOvercast 0.4};
if ((paramsArray select 1) == 5) then {0 setOvercast 0.5};
if ((paramsArray select 1) == 6) then {0 setOvercast 0.6};
if ((paramsArray select 1) == 7) then {0 setOvercast 0.7};
if ((paramsArray select 1) == 8) then {0 setOvercast 0.8};
if ((paramsArray select 1) == 9) then {0 setOvercast 0.9};
if ((paramsArray select 1) == 10) then {0 setOvercast 1};

//		Fog�̑I��
if ((paramsArray select 2) == 0) then {0 setFog 0};
if ((paramsArray select 2) == 1) then {0 setFog 0.1};
if ((paramsArray select 2) == 2) then {0 setFog 0.2};
if ((paramsArray select 2) == 3) then {0 setFog 0.3};
if ((paramsArray select 2) == 4) then {0 setFog 0.4};
if ((paramsArray select 2) == 5) then {0 setFog 0.5};
if ((paramsArray select 2) == 6) then {0 setFog 0.6};
if ((paramsArray select 2) == 7) then {0 setFog 0.7};
if ((paramsArray select 2) == 8) then {0 setFog 0.8};
if ((paramsArray select 2) == 9) then {0 setFog 0.9};
if ((paramsArray select 2) == 10) then {0 setFog 1};
