if (not isServer) exitWith {};
_thrower = _this select 0;
_bradley = _this select 1;

_thrower lookAt _bradley;

_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";
_thrower addMagazine "HandGrenade_Stone";

while {(_thrower ammo "HandGrenade_Stone") >= 1} do {_thrower fire ["HandGrenade_Stone","HandGrenade_Stone","HandGrenade_Stone"]};