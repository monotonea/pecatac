waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 
player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Clear Hostile Position"]; 
T1 setSimpleTaskDescription["Clear hostile position","Clear Hostile Position","Clear Hostile Position"];

["Task1Current", ["Clear Hostile Position"]] call BIS_fnc_showNotification;
["Task1Current"] call BIS_fnc_showNotification;
["Task1Current",["", "Clear Hostile Position"]]  call BIS_fnc_showNotification;
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