//this addeventhandler ["fired",{_this execVM "tracer.sqf"}]

/*not used this mission because of the line 
_projectile = nearestobject [_this select 0,_this select 4];
sometime fails to get a shot bullet.
It seems that under low FPS condition,"nearestobjects" command misses bullet for which has gone more than 50m from the shooter. 
*/

_projectile = nearestobject [_this select 0,_this select 4];

//player sidechat format ["%1,%2,%3",position _projectile select 0,position _projectile select 1,position _projectile select 2];

_light = "#lightpoint" createVehicle [0,0,0]; 
_light lightAttachObject [_projectile,[0,0,0]];
_light setLightBrightness 0.2; 
_light setLightAmbient[1,0.9,0.6];
_light setLightColor[1,0.9,0.6];


sleep 0.5;
deleteVehicle _light