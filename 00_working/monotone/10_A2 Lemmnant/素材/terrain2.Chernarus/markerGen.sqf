_cock	= _this select 0;
_height	= getposASL _cock select 2;
_marker	= createMarker [format["mk%1",gencount],getpos _cock];
_marker setMarkerShape "rectangle";
_marker setMarkerSize [50,50];
_marker setMarkerbrush "solid";
_marker setMarkerColor "colorRed";
_marker setMarkerAlpha (_height/400);

deleteVehicle _cock;
markerDone = true;
