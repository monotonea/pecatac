if(not isServer) exitWith{};

_heli = _this select 0;

_infLeader = leader(group(assignedCargo _heli select 2));

// ヘリの高度を下げる
(group (driver _heli)) lockWP true;
_heli flyInHeight 5;

// 目標高度まで
waitUntil { ((getPos _heli) select 2 < 25) && (speed _heli < 10) };

// FastRope開始
t=[_heli] spawn ace_fastroping_fnc_deployAI; 

// FastRope開始待ち
waitUntil {not ((_heli getVariable ["ace_fastroping_deployedRopes", []]) isEqualTo [])};

//(group _infLeader) setBehaviour "COMBAT";

// FastRope中はヘリを静止させる
_time = time;
while {isEngineOn _heli and (not ((_heli getVariable ["ace_fastroping_deployedRopes", []]) isEqualTo [])) and ((_time - time) < 60)} do 
{
	[_heli, 0, 0] call BIS_fnc_setPitchBank;
	_heli setVelocity [0, 0, 0];

	sleep 0.001;
};

// 静止解除
_heli flyInHeight 50;
(group (driver _heli)) lockWP false;

// 下ろした歩兵にWaypoint作成
// (FastRopeした歩兵はWPが消えるため)
_infGroup = group _infLeader;
_wp1 = _infGroup addWaypoint [getMarkerPos "cp_1", 50];
_wp1 setWaypointBehaviour "AWARE";
_wp1 setWaypointSpeed "FULL";

_wp2 = _infGroup addWaypoint [getMarkerPos "cp_2", 100];
_wp2 setWaypointBehaviour "COMBAT";
_wp2 setWaypointType "SAD";