if(not isServer) exitWith{};


//	TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
//	ACE����
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_SpraypaintBlue",10];
ammobox additemCargoGlobal ["ACE_DAGR",2];

/*	
	��Ԓ���NVG���A�T�C���ł��Ȃ��̂Ń~�b�V�����J�n�O�ɃC���x���g������X���b�g�Ɉڂ�
	��ʕ�		rhsusf_ANPVS_14
	���ꕔ��		rhsusf_ANPVS_15
	���V�A�R		rhs_1PN138
*/	

{
	if(side _x == west) then
	{
		_x assignItem "rhsusf_ANPVS_15"
	};
} foreach (allUnits);

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };