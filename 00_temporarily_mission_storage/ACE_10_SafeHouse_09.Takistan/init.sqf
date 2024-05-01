waitUntil { !isNil {player} };
waitUntil { player == player };
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side=true;

//initWeaponFunction =  compile preprocessFileLineNumbers "initWeapon.sqf";
//call initWeaponFunction;

execVM "briefing.sqf";
