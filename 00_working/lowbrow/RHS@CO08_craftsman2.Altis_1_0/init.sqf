if(not isServer) exitWith{};

//	TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	装備ランダム化
execVM "Scripts\randomgear.sqf";

//	ACE耳栓・ラジオ
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };
