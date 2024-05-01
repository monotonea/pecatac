//		視程を設定
setviewdistance 3000;
setObjectViewDistance 2500;

if(not isServer) exitWith{};

//		TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
 //	ACE耳栓・ACRE2ラジオ
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_microDAGR",4];
ammobox additemCargoGlobal ["ACRE_PRC117F",4];
ammobox additemCargoGlobal ["ACRE_PRC152",12];

//		プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };

