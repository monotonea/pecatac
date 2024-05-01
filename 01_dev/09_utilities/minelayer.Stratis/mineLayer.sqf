/*
	totalCount = 0;
	mAct=this addAction ["Laying mines","mineLayer.sqf",[this,20,30,7,3],0,true,false,""];
*/;

	
_arg		= _this select 3;

_veh		= _arg select 0;//mine dispensing vehicle
_dirLim  	= _arg select 1;//direction which could be prohibited to dispense mine
_range		= _arg select 2;//longest distance of mine
_rounds		= _arg select 3;//rounds of mines on single action
_limit		= _arg select 4;//how many times this action could be used

_mType = "atmine_range_ammo";
_rangeSafe = 15;			//least distance of mine

_rAdd = round (random 1);
_rRounds = floor (_rounds/2);
_lRounds = floor (_rounds/2);

if ( (_rounds mod 2) == 1 ) then {
								if (_rAdd==1)	then
												{_rRounds = _rRounds+1};
								if (_rAdd==0) then
												{_lRounds = _lRounds+1};
							};

_rCount = 0;
_lCount = 0;

while {_rRounds>_rCount}
	do	{
			_vehDir		= direction _veh;
			_dirAdhoc 	= _vehDir + _dirLim +random (180-(2*_dirLim));
			_rangeAdhoc	= (random _range) + _rangeSafe;
			
			_mine = _mType createVehicle [	( position _veh select 0 ) + (_rangeAdhoc * cos (_dirAdhoc - 90) ),
											( position _veh select 1 ) - (_rangeAdhoc * sin (_dirAdhoc - 90) ),0.1];
											
			_mk	= createMarker [format ["mk%1",random 1000],[position _mine select 0,position _mine select 1]];
			_mk setMarkerShape "ICON";
			_mk setMarkerType "mil_dot";
			_rCount	= _rCount+1;
			
	};
	
while {_lRounds>_lCount}
	do	{
			_vehDir		= direction _veh;
			_dirAdhoc 	= _vehDir + (180+_dirLim) + random (180-(2*_dirLim));
			_rangeAdhoc	= (random _range) + _rangeSafe;
			
			_mine = _mType createVehicle [	( position _veh select 0 ) + (_rangeAdhoc * cos (_dirAdhoc - 90) ),
											( position _veh select 1 ) - (_rangeAdhoc * sin (_dirAdhoc - 90) ),0.1];
											
			_mk	= createMarker [format ["mk%1",random 100],[position _mine select 0,position _mine select 1]];
			_mk setMarkerShape "ICON";
			_mk setMarkerType "mil_dot";
			_lCount	= _lCount+1;
	};
totalCount = totalCount +1;
If(totalCount > _limit) then {_veh removeAction (_this select 2)};

//hint format ["%1",_this select 2];