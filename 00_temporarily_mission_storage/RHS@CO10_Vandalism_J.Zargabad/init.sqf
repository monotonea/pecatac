if(not isServer) exitWith{};

 // TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
 // ACE耳栓
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_SpraypaintBlack",20];
ammobox additemCargoGlobal ["ACRE_PRC152",12];
ammobox additemCargoGlobal ["ACE_Clacker",20];
ammobox additemCargoGlobal ["ACE_Flashlight_XL50",20];
ammobox additemCargoGlobal ["ACE_M84",30];
ammobox additemCargoGlobal ["gac_JSDF_M_RG_22_APAV",20];
//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };