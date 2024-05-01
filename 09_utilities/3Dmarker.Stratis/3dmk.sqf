If(isServer)then
{
	objList=[];
	mkList=[];
	lightList=[];
	leaderList=[];

	delObjList=[];
	delMkList=[];
	delLightList=[];

	lightFunction={
	_obj = _this select 0;
	_light = '#lightpoint' createVehicle [0,0,0];
	_light setLightBrightness	Bright;
	_light setLightAmbient		Ambient;
	_light setLightColor		Color;
	_light lightAttachObject [_obj,[0,0,1]];
	lightList set [count lightList,_light];
	publicVariable "lightList";
	};
	
	delLightFunction={
	delLightList=lightList;
	{deleteVehicle _X} forEach delLightList;
	};

	publicVariable "objList";
	publicVariable "mkList";
	publicVariable "lightList";
	publicVariable "leaderList";
	
	publicVariable "delObjList";
	publicVariable "delMkList";
	publicVariable "delLightList";

	publicVariable "lightfunction";
};

//player setVariable ["lightList",[],true];

waitUntil{player == leader group player;};

leaderList set [count leaderList,player];
publicVariable "delLightList";

//with action
_act = player addAction["point aim",
		{
		_pos  = screenToWorld [0.5,0.5];
		_obj = 'Sign_Sphere100cm_F' createVehicle _pos;
		_obj setPos [getpos _obj select 0,getpos _obj select 1,1.5];
		objList set [count objList,_obj];
		_mk = createMarker [format['mk%1',random 10],_pos];
		_mk setMarkerShape 'ICON';
		_mk setMarkerType 'mil_dot';
		_mk setMarkerColor 'ColorBlack';
		mkList set [count mkList,_mk];
		[[_obj],"lightfunction",nil,true] spawn BIS_fnc_MP;
		},"",0,true,false,""];


//_trgPoint = createTrigger["EmptyDetector",[0,0,0]];
_trgOn = createTrigger["EmptyDetector",[0,0,0]];
_trgOff = createTrigger["EmptyDetector",[0,0,0]];
_trgDel = createTrigger["EmptyDetector",[0,0,0]];

//-----------------------------------------------------------------------------------------------------
	//_trgPoint setTriggerActivation ["Golf","PRESENT",true];
_trgOn setTriggerActivation ["Hotel","PRESENT",true];
_trgOff setTriggerActivation ["INDIA","PRESENT",true];
_trgDel setTriggerActivation ["JULIET","PRESENT",true];

//-----------------------------------------------------------------------------------------------------
//these variable must be global
Bright		=1;
Ambient		=[0.001,0,0];
Color		=[0.5,0.2,0.2];

publicVariable "Bright";
publicVariable "Ambient";
publicVariable "Color";
//-----------------------------------------------------------------------------------------------------
/*point via radio command was frozen
_trgPoint setTriggerStatements ["this","

		_pos  = screenToWorld [0.5,0.5];
		_obj = 'Sign_Sphere100cm_F' createVehicle _pos;
		_obj setPos [getpos _obj select 0,getpos _obj select 1,1.5];
		objList set [count objList,_obj];
		_mk = createMarker [format['mk%1',random 10],_pos];
		_mk setMarkerShape 'ICON';
		_mk setMarkerType 'mil_dot';
		_mk setMarkerColor 'ColorBlack';
		mkList set [count mkList,_mk];

		[[_obj],'lightfunction',true,true] spawn BIS_fnc_MP;

		player sidechat format ['%1',_obj distance player];
								",""];
*/

_trgOn setTriggerStatements ["this","

		onMapSingleClick {
		_obj = 'Sign_Sphere100cm_F' createVehicle _pos;
		_obj setPos [getpos _obj select 0,getpos _obj select 1,1.5];
		objList set [count objList,_obj];
		_mk = createMarker [format['mk%1',random 10],_pos];
		_mk setMarkerShape 'ICON';
		_mk setMarkerType 'mil_dot';
		_mk setMarkerColor 'ColorBlack';
		mkList set [count mkList,_mk];

		[[_obj],'lightfunction',nil,true] spawn BIS_fnc_MP;

		player sidechat format ['%1',_obj distance player];
							};",""];

_trgOff setTriggerStatements ["this","onMapSingleClick {};",""];
_trgDel setTriggerStatements ["this","
										{deleteVehicle _X} forEach objList;
										[[],'delLightFunction',nil,true] spawn BIS_fnc_MP;
										{deletemarker _X} forEach mkList;
									",""];
//-----------------------------------------------------------------------------------------------------

	//_trgPoint	setTriggerText	"Point Your Aim";
_trgOn 		setTriggerText	"Activate 3D Markers On Map";
_trgOff		setTriggerText	"Deactivate 3D Markers On Map";
_trgDel 	setTriggerText	"Delete All 3D Markers";