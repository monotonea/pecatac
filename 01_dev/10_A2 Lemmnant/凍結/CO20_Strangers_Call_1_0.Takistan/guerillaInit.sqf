_guerilla = _this select 0;
removeAllWeapons _guerilla;
_guerilla setCaptive true;
_guerilla allowFleeing 0;
_guerilla setUnitPos "UP";
_guerilla addMPEventHandler ["killed",{[_this] spawn {_this execVM "civVicAlice.sqf"}}];