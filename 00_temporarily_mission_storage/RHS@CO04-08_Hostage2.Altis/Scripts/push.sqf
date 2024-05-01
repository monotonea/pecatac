//a1 = this addaction ["<t color=""#CC0000"">Push</t>", "scripts\push.sqf",[], 9,false, false, "","((vehicle _target) distance  (vehicle _this)) < 10"];
_object = _this select 0;
_user = _this select 1;
if (_user != vehicle _user) exitwith {};
_speed = [];
_dir = getDir _user;
_dx = sin(_dir)*4;
_dy = cos(_dir)*4;

_object setVelocity [_dx,_dy,0];