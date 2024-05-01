
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side=true;
execVM "briefing.sqf";
execVM "playerdirection.sqf";
execVM "3dmk.sqf";
sleep 3;

_box="ACE_medicalSupplyCrate_advanced" createVehicle (position player);
_box additemCargoGlobal ["ACE_EarPlugs",10];