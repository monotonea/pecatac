// set rescue target position
private _location = getMarkerPos (selectRandom locationArray);
target setPos _location;
targetTrriger setPos _location;

// set Difficulty
_missionParam = ["difficulty", 1] call BIS_fnc_getParamValue;
switch (_missionParam) do
{
	case 0: {
        car1 setVehicleLock "UNLOCKED";
        car2 setVehicleLock "UNLOCKED";
        [OPFOR,0.1,0.1,0.3,0.3] call BIS_fnc_EXP_camp_setSkill;
    };
	case 1: {[OPFOR,0.3,0.3,0.5,0.5] call BIS_fnc_EXP_camp_setSkill;};
    case 2: {[OPFOR,0.7,0.5,1,0.8] call BIS_fnc_EXP_camp_setSkill;};
};

