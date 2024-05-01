_list	= _this select 0;
_listCount = count _list;

_bDetected= false;
_detectCount = 0;
while 	
	{not _bDdetected}
 do 	{
    			    player sideChat format["%1",_listcount];
 		 if
 			(_list select _detectCount) == (typeOf "man")
 		 then
 		  	{
 		  		_victim	= (_list select _detectCount);
 		  		_posVictim = position _victim;
 		  		_bDetected	= true;
 		  	 };
 		  	_detectCount = _detectCount +1};

player sideChat format["%1",_minepos];

_detonated = 0;


While
	{_detonated< mineNum}
do
	{hint format["%1",_trg];
		mineType createVehicle [_posvictim select,,0.5];
								
		sleep random 0.5,
		_detonated = _detonated +1;
		};