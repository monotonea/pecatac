
if(isServer)then{MissionTime = random 24;publicVariable "Missiontime";};
skipTime Missiontime;

execVM "briefing.sqf";
execVM "playerdirection.sqf";
execVM "3dmk.sqf";
sleep 3;

_box="ACE_medicalSupplyCrate_advanced" createVehicle (position player);
_box additemCargoGlobal ["ACE_EarPlugs",10];