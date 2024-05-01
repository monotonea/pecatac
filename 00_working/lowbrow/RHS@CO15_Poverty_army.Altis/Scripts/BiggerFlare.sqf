_obj = _this select 0;
if(_obj isKindOf "FlareBase") then{
	sleep 3;
	_light="#lightpoint" createVehicleLocal [0,0,0];
	if(_obj isKindOf "F_40mm_White") then{
		_light setLightBrightness 8;
		_light setLightAmbient [1,1,1];
		_light setLightColor [1,1,1];
	};
	if(_obj isKindOf "F_40mm_Red") then{
		_light setLightBrightness 4;
		_light setLightAmbient [1,0,0];
		_light setLightColor [1,0,0];
	};
	if(_obj isKindOf "F_40mm_Green") then{
		_light setLightBrightness 4;
		_light setLightAmbient [0,1,0];
		_light setLightColor [0,1,0];
	};

	_light lightAttachObject [_obj,[0,0,0]];
	waitUntil{ not alive _obj};
	deleteVehicle _light;
};

