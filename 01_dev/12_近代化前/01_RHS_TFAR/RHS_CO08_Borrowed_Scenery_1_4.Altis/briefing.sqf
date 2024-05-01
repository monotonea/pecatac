waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 
player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 
player createDiaryRecord ["Diary", ["3D Marker","Leaders can put markers wherever both on map AND 3D world by action menu and radio command."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Clear AA Sight"]; 
T1 setSimpleTaskDescription["Clear enemy AA sight located around a church.","Clear AA Sight","Clear AA Sight"];

T2 = player createSimpleTask["Clear Check Point"]; 
T2 setSimpleTaskDescription["Clear enemy Check Point.","Clear Check Point","Clear Check Point"];

["Task1Current", ["Clear Enemy Sights"]] call BIS_fnc_showNotification;
["Task1Current"] call BIS_fnc_showNotification;
["Task1Current",["", "Clear Enemy Sights"]]  call BIS_fnc_showNotification;
player setCurrentTask T1;
/*
supreq synchronizeObjectsRemove  (synchronizedObjects supreq);
supreq synchronizeObjectsAdd [(leader ft0),supHelo];
nul=[]spawn{while{true}do{
						currentFtNum=count units ft0;
						waitUntil{not(currentFtNum==count units ft0)};
						supreq synchronizeObjectsRemove(synchronizedObjects supreq);
						supreq synchronizeObjectsAdd [(leader ft0),supHelo];
						sleep 15};
			supreq synchronizeObjectsRemove(synchronizedObjects supreq);
			supreq synchronizeObjectsAdd [(leader ft0),supHelo];};
*/;