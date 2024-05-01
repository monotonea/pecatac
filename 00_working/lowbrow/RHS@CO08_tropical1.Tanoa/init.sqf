if(not isServer) exitWith{};


//	TFAR LR©“®Š„‚è“–‚Ä‰ğœ ü”g”‚ğ“¯Šú
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
//	ACE¨ğ
ammobox additemCargoGlobal ["ACE_EarPlugs",10];

//	ƒvƒŒƒCƒ„[‚Ì“¯Šú‘Ò‚¿
waitUntil { !isNil {player} };
waitUntil { player == player };