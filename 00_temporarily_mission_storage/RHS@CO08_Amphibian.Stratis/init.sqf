if(not isServer) exitWith{};
 // TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// ラジオと耳栓
helo1 additemCargoGlobal ["ACE_EarPlugs",10];
helo1 additemCargoGlobal ["itemradio",10];
 
//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };