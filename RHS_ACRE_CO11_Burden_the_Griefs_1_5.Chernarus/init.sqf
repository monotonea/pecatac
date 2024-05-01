//execVM "initWeapon.sqf";
execVM "briefing.sqf";

sleep 3;

execVM "vehicleAssignment.sqf";

_box="ACE_medicalSupplyCrate_advanced" createVehicle (position player);
_box additemCargoGlobal ["ACE_EarPlugs",10];
