		_pos  = screenToWorld [0.5,0.5];
		_obj = 'Sign_Sphere100cm_F' createVehicle _pos;
		_obj setPos [getpos _obj select 0,getpos _obj select 1,1.5];
		objList set [count objList,_obj];
		_mk = createMarker [format['mk%1',random 10],_pos];
		_mk setMarkerShape 'ICON';
		_mk setMarkerType 'mil_dot';
		_mk setMarkerColor 'ColorBlack';
		mkList set [count mkList,_mk];
		
		_light = '#lightpoint' createVehicle [0,0,0]; 
		_light setLightBrightness	1; 
		_light setLightAmbient		[0.001,0,0];
		_light setLightColor		[0.5,0.2,0.2];
		_light lightAttachObject [_obj,[0,0,1]];
		lightList set [count lightlist,_light];
		
		player sidechat format ['%1',_obj distance player];