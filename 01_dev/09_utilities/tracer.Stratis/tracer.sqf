//this addeventhandler ["fired",{(nearestObject [_this select 0, _this select 4]) execVM "tracer.sqf"}]

_projectile = _this;
player sidechat format ["%1,%2,%3",position _projectile select 0,position _projectile select 1,position _projectile select 2];

_light = "#lightpoint" createVehicle [0,0,0]; 
_light lightAttachObject [_projectile,[0,0,0]];
_light setLightBrightness .8; 
_light setLightAmbient[1,0.9,0.6];
_light setLightColor[1,0.9,0.6];

sleep 2;
deleteVehicle _light