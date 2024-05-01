_stdU = _this select 0;
_follower = _this select 1;
_rangeX = _this select 2;
_rangeY = _this select 3;

if (not isServer) exitWith {};

while {true}do
	{
		_wpPosX=(position _stdU select 0)+_rangeX;
		_wpPosY=(position _stdU select 1)+_rangeY;
		_wpPos = [_wpPosX,_wpPosY,0];

		if 
			((_follower distance _wpPos) > 5) 
			
		then
		 {
			_wp = (group _follower) addWaypoint [_wpPos,0];
			_wp setWPPos _wpPos;
			_wp setWaypointType "move";
			(group _follower) setCurrentWaypoint _wp;
			hint format ["%1,%2,%3",_wp,2,3];		
		sleep 5};
		
		};