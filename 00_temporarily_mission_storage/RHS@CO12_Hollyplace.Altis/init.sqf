if(not isServer) exitWith{};
 // TFAR LR�������蓖�ĉ��� ���g���𓯊�
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	ACE����
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_microDAGR",2];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

//	BLUFOR�̃��j�b�g������w�@����O��
{
	if(side _x == west) then
	{
		removeAllPrimaryWeaponItems _x;
	};
} foreach (allUnits);

//server
server_fog = fogParams; publicVariable "server_fog";
//client
0 setFog [0.3, 0.1, 40]; // ���̔Z��, �J�ڗ�, ������x
