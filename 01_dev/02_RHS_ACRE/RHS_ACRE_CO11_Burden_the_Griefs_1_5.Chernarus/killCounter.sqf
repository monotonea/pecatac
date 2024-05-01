_civ = _this select 0;
_killer = _this select 1;

waitUntil {not alive _civ};
if ((side _killer) == west) then {bodyCounter = bodyCounter +1};
hint format ["%1 civilians sufferd!",bodyCounter];