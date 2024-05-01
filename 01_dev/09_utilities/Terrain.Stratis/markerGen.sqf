_cock	= _this select 0;
_res	= _this select 1;

_height	= getposASL _cock select 2;

_marker	= createMarker [format["mk%1",genCount],getpos _cock];
_marker setMarkerShape "rectangle";
_marker setMarkerSize [(_res/2),(_res/2)];
_marker setMarkerbrush "solid";

_max = getPosASL highest select 2;
_min = getPosASL lowest select 2;

//distinguish‚Ì—ª‚¾B
_dist = _max - _min;
_unit = _dist/8;

player sidechat format ["name%1,height%2,max%3,min%4,unit%5",_marker,_height,_max,_min,_unit];

if	(_height > _max)												then	{_marker setMarkerColor "ColorWhite"};
if	((_height < (_min+(8*_unit))) and (_height >(_min+(7*_unit))))	then	{_marker setMarkerColor "ColorRed"};
if	((_height < (_min+(7*_unit))) and (_height >(_min+(6*_unit))))	then	{_marker setMarkerColor "ColorPink"};
if	((_height < (_min+(6*_unit))) and (_height >(_min+(5*_unit))))	then	{_marker setMarkerColor "ColorOrange"};
if	((_height < (_min+(5*_unit))) and (_height >(_min+(4*_unit))))	then	{_marker setMarkerColor "ColorYellow"};
if	((_height < (_min+(4*_unit))) and (_height >(_min+(3*_unit))))	then	{_marker setMarkerColor "ColorGreen"};
if	((_height < (_min+(3*_unit))) and (_height >(_min+(2*_unit))))	then	{_marker setMarkerColor "ColorBlue"};
if	((_height < (_min+(2*_unit))) and (_height >(_min+(_unit))))	then	{_marker setMarkerColor "ColorKhaki"};
if	((_height < (_min+_unit)) 	  and (_height >(_min+(_min))))		then	{_marker setMarkerColor "ColorBrown"};
if	(_height < _min)												then	{_marker setMarkerColor "Colorblack"};

deleteVehicle _cock;
markerDone = true;
