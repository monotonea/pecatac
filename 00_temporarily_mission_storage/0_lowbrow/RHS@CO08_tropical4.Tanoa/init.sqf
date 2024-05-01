if(not isServer) exitWith{};


//	TFAR LR©“®Š„‚è“–‚Ä‰ğœ ü”g”‚ğ“¯Šú
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
{
	if(side _x == west) then
	{
		_x assignItem "rhsusf_ANPVS_15"	
	};
} foreach (allUnits);

//	ƒvƒŒƒCƒ„[‚Ì“¯Šú‘Ò‚¿
waitUntil { !isNil {player} };
waitUntil { player == player };
