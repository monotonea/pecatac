// AmmoExplosive.sqf
if(not isServer) exitWith{};

_ammo = _this select 0;
_pos = [getPos _ammo select 0, getPos _ammo select 1, 0.5];

waitUntil{not alive _ammo};

_bombs = ["G_20mm_HE", "Sh_82mm_AMOS ", "G_20mm_HE", "G_20mm_HE", "B_30mm_AP", "Bo_GBU12_LGB", "Bo_GBU12_LGB", "Bo_GBU12_LGB", "Bo_GBU12_LGB", "GrenadeHand"];
while{(random 3) > 1} do{
	sleep (random 5);
	(_bombs select (floor (random (count _bombs)))) createVehicle _pos;
};