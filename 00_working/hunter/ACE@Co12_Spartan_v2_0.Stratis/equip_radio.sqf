if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};
sleep 0.1;

_unit = _this select 0;

if (!isServer) then {
	if ((_unit==player) || (player == leader group _unit)) then {
		waitUntil { local _unit };
	};
	sleep 0.1;
};

if (!local _unit) exitwith {};
//////////////////////////////////////////////////////////////////

if (isClass (configFile >> "CfgPatches" >> "acre_api")) then {
	_unit addItemToUniform "ACRE_PRC152";
} else {
    if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {

    };
};

