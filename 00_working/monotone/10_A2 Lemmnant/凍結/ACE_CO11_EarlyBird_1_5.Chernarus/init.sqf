[] execVM "initUnits.sqf";
[] execVM "initWeapon.sqf";
[] execVM "briefing.sqf";

{_X addWeapon "ACE_Map"} forEach units grpA;
{_X addWeapon "ACE_Map"} forEach units grpB;