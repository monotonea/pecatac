_obj = _this select 0;//light attached object
_hgt = _this select 1;//height of light attached position

_light = "#lightpoint" createVehicle (getpos lightLogic); 
_light setLightBrightness 0.3; 
_light setLightAmbient[1,1,0.8]; //color of lighted objects surrounding lightsource
_light setLightColor[1,1,0.8]; //color of lightsource itself
_light lightAttachObject [_obj,[0,0,_hgt]];