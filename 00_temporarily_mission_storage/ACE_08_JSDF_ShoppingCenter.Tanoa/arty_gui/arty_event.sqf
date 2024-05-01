_team = _this select 0;
_arty_count = (count _team) - 1;

for "_x" from 0 to _arty_count do{
	(_team select _x) addeventhandler ["fired",{_this execVM "arty_gui\arty_fire.sqf"}];
};

