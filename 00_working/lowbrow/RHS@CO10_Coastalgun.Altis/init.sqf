if(not isServer) exitWith{};
 // TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	ACE耳栓
ammobox additemCargoGlobal ["ACE_EntrenchingTool",12];
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_DAGR",2];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

// 車両のくじ引き
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

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };