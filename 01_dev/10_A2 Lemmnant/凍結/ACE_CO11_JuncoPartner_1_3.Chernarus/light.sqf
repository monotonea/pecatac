_obj = _this select 0;//light attached object
_hgt = _this select 1;//height of light attached position

_light = "#lightpoint" createVehicle [0,0,0]; 
_light setLightBrightness 0.3; 
_light setLightAmbient[1,0.5+(random 0.5),0.5+(random 0.5)]; //color of lighted objects surrounding lightsource
_light setLightColor[1,0.5+(random 0.5),0.5+(random 0.5)]; //color of lightsource itself
_light lightAttachObject [_obj,[0,0,_hgt]];