if(not isServer) exitWith{};

_heli = _this select 0;

_infLeader = leader(group(assignedCargo _heli select 2));

// �w���̍��x��������
(group (driver _heli)) lockWP true;
_heli flyInHeight 5;

// �ڕW���x�܂�
waitUntil { ((getPos _heli) select 2 < 25) && (speed _heli < 10) };

// FastRope�J�n
t=[_heli] spawn ace_fastroping_fnc_deployAI; 

// FastRope�J�n�҂�
waitUntil {not ((_heli getVariable ["ace_fastroping_deployedRopes", []]) isEqualTo [])};

//(group _infLeader) setBehaviour "COMBAT";

// FastRope���̓w����Î~������
_time = time;
while {isEngineOn _heli and (not ((_heli getVariable ["ace_fastroping_deployedRopes", []]) isEqualTo [])) and ((_time - time) < 60)} do 
{
	[_heli, 0, 0] call BIS_fnc_setPitchBank;
	_heli setVelocity [0, 0, 0];

	sleep 0.001;
};

// �Î~����
_heli flyInHeight 50;
(group (driver _heli)) lockWP false;

// ���낵��������Waypoint�쐬
// (FastRope����������WP�������邽��)
_infGroup = group _infLeader;
_wp1 = _infGroup addWaypoint [getMarkerPos "cp_1", 50];
_wp1 setWaypointBehaviour "AWARE";
_wp1 setWaypointSpeed "FULL";

_wp2 = _infGroup addWaypoint [getMarkerPos "cp_2", 100];
_wp2 setWaypointBehaviour "COMBAT";
_wp2 setWaypointType "SAD";