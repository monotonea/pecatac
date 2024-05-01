objList=[];
mkList=[];

_trgOn = createTrigger["EmptyDetector",[0,0,0]];
_trgOff = createTrigger["EmptyDetector",[0,0,0]];
_trgDel = createTrigger["EmptyDetector",[0,0,0]];

_trgOn setTriggerActivation ["Hotel","PRESENT",true];
_trgOff setTriggerActivation ["INDIA","PRESENT",true];
_trgDel setTriggerActivation ["JULIET","PRESENT",true];

_trgOn setTriggerStatements ["this","

		onMapSingleClick {
		_obj = 'Sign_sphere100cm_EP1' createVehicle _pos;
		_obj setPos [getpos _obj select 0,getpos _obj select 1,1.5];
		objList set [count objList,_obj];
		_mk = createMarker [format['mk%1',random 10],_pos];
		_mk setMarkerShape 'ICON';
		_mk setMarkerType 'Dot';
		_mk setMarkerColor 'ColorBlack';
		mkList set [count mkList,_mk];
						};",""];
	
_trgOff setTriggerStatements ["this","onMapSingleClick {};",""];
_trgDel setTriggerStatements ["this","	{deleteVehicle _X}forEach objList;
										{deletemarker _X}forEach mkList;",""];

_trgOn setTriggerText	"Activate 3D Markers";
_trgOff setTriggerText	"Deactivate 3D Markers";
_trgDel setTriggerText	"Delete All 3D Markers";