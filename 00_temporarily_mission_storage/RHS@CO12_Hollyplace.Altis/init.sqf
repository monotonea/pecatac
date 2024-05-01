if(not isServer) exitWith{};
 // TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	ACE耳栓
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_microDAGR",2];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

//	BLUFORのユニットから光学機器を外す
{
	if(side _x == west) then
	{
		removeAllPrimaryWeaponItems _x;
	};
} foreach (allUnits);

//server
server_fog = fogParams; publicVariable "server_fog";
//client
0 setFog [0.3, 0.1, 40]; // 霧の濃さ, 遷移率, 上限高度
