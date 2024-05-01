_helo	= _this select 0;
_obj	= _this select 1;

//_height under 20 might not works
_height	= 20;

//correct X and Y axis

while
		{abs(((position(_helo))select 0)-((position _obj)select 0))+abs(((position(_helo))select 1)-((position _obj)select 1)) > 5}
	do
		{_helo doMove position _obj};

//correct Z axis
		
_helo flyInHeight _height;
waitUntil {((position _helo) select 2) < (_height +1)};
_obj attachTo [_helo,[0,0,-1*(_height-3)]];
