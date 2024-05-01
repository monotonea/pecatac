// AmmoExplosive.sqf
if(not isServer) exitWith{};

_ammo = _this select 0;
_pos = [getPos _ammo select 0, getPos _ammo select 1, 0.5];

waitUntil{not alive _ammo};
	_bombs = ["GrenadeHand", "GrenadeHand", "R_TBG32V_F", "R_TBG32V_F", "Bo_Mk82"];
while{(random 3) > 1} do{
	sleep (random 5);
	(_bombs select (floor (random (count _bombs)))) createVehicle _pos;
};