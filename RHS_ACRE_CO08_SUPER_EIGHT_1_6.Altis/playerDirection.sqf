waitUntil {player == player};

//------------------------------------------------------------------
_mN	= createMarker [format["mN_%1",getPlayerUID player],[0,0,0]];
_mN setMarkerShape "icon";
_mN setMarkerSize [0,0];
_mN setMarkertype "mil_dot";
_mN setMarkerColor "ColorBlack";
_mN setMarkerText format["%1",Name player];

_m0	= createMarker [format["m0_%1",getPlayerUID player],[0,0,0]];
_m0 setMarkerShape "rectangle";
_m0 setMarkerSize [1,20];
_m0 setMarkerbrush "solid";
_m0 setMarkerColor "ColorBlue";

_m1	= createMarker [format["m1_%1",getPlayerUID player],[0,0,0]];
_m1 setMarkerShape "rectangle";
_m1 setMarkerSize [5,3];
_m1 setMarkerbrush "solid";
_m1 setMarkerColor "Colorblue";

_m2	= createMarker [format["m2_%1",getPlayerUID player],[0,0,0]];
_m2 setMarkerShape "rectangle";
_m2 setMarkerSize [3,2];
_m2 setMarkerbrush "solid";
_m2 setMarkerColor "Colorblue";

_m3	= createMarker [format["m3_%1",getPlayerUID player],[0,0,0]];
_m3 setMarkerShape "rectangle";
_m3 setMarkerSize [2,1];
_m3 setMarkerbrush "solid";
_m3 setMarkerColor "ColorBlue";

//------------------------------------------------------------------
while {alive player}do{
				while{vehicle player == player}
					do {
					{_x setMarkerAlpha 1} foreach [_mN,_m0,_m1,_m2,_m3];
//------------------------------------------------------------------
_posX0 = ( position player select 0 ) + (((markerSize _m0 select 1)) * cos ((direction player)-90) );
_posY0 = ( position player select 1 ) - (((markerSize _m0 select 1)) * sin ((direction player)-90) );
//------------------------------------------------------------------

_posX1 = ( position player select 0 ) + ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)*3) * cos ((direction player)-90) );
_posY1 = ( position player select 1 ) - ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)*3) * sin ((direction player)-90) );
//------------------------------------------------------------------

_posX2 = ( position player select 0 ) + ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)+
											(markerSize _m2 select 1)*5.5) * cos ((direction player)-90) );
											
_posY2 = ( position player select 1 ) - ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)+
											(markerSize _m2 select 1)*5.5) * sin ((direction player)-90) );
//------------------------------------------------------------------
_posX3 = ( position player select 0 ) + ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)+
											(markerSize _m2 select 1)+
											(markerSize _m3 select 1)*12) * cos ((direction player)-90) );
											
_posY3 = ( position player select 1 ) - ((	(markerSize _m0 select 1)+
											(markerSize _m1 select 1)+
											(markerSize _m2 select 1)+
											(markerSize _m3 select 1)*12) * sin ((direction player)-90) );
//------------------------------------------------------------------
_mN setMarkerDir (direction player)+180;
_m0 setmarkerDir (direction player)+180;
_m1 setmarkerDir (direction player)+180;
_m2 setmarkerDir (direction player)+180;
_m3 setmarkerDir (direction player)+180;

_mN setMarkerpos [_posX0, _posY0];
_m0 setMarkerpos [_posX0, _posY0];
_m1 setmarkerpos [_posX1, _posY1];
_m2 setmarkerpos [_posX2, _posY2];
_m3 setMarkerpos [_posX3, _posY3];
								
sleep 0.1;
if (not alive player) exitWith	{
									{deleteMarker _x}foreach[_mN,_m0,_m1,_m2,_m3];
								};
							};
				{_x setMarkerAlpha 0} foreach [_mN,_m0,_m1,_m2,_m3];
				sleep 0.1
							};