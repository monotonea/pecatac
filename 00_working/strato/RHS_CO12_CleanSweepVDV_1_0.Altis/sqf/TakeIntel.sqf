// this addAction ["Take Intel", "sqf\TakeIntel.sqf", ["bTakeIntel"], 0, true, false, "", "not (missionNamespace getVariable [""bTakeIntel"", false])"];

_target = _this select 0;
_actionId = _this select 1;
_args = _this select 3;
_varName = _args select 0;

sleep 3;

missionNamespace setVariable [_varName, true, true];