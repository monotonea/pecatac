
tf_same_sw_frequencies_for_side=true;
execVM "HcMain.sqf";
execVM "briefing.sqf";

sleep 3;

_box="ACE_medicalSupplyCrate_advanced" createVehicle (position player);
_box additemCargoGlobal ["ACE_EarPlugs",10];
