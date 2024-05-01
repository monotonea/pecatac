_object = _this select 0;
_user = _this select 1;
if (_user != vehicle _user) exitwith {hint "You can't push from inside the vehicle you idiot!"};
_dir = getDir _user;
_dx = sin(_dir)*4;
_dy = cos(_dir)*4;

_object setVelocity [_dx,_dy,0];