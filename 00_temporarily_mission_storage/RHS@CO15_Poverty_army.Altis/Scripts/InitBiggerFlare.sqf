{
	_x addEventHandler ["fired", {
		_unit = _this select 0;
		_obj = _this select 6;
		if(_obj isKindOf "FlareBase" and (local _unit)) then{
			[[_obj],"Scripts\BiggerFlare.sqf"] remoteExec ["BIS_fnc_execVM",0,false];
		};
	}];
} forEach allUnits;
