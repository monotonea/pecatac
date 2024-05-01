
execVM "briefing.sqf";
execVM "3Dmk.sqf";
execVM "playerDirection.sqf";

sleep 3;

_box="ACE_medicalSupplyCrate_advanced" createVehicle (position player);
_box additemCargoGlobal ["ACE_EarPlugs",10];
