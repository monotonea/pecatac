waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 
player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 
player createDiaryRecord ["Diary", ["3D Marker","Leaders can put markers wherever both on map AND 3D world by action menu and radio command."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Secure POW"]; 
T1 setSimpleTaskDescription["Secure an our colleague arrested in the <marker name='mObj'>enemy camp</marker>.","Secure POW","Secure POW"];

T2 = player createSimpleTask["Evac from AO"]; 
T2 setSimpleTaskDescription["Get to <marker name='exfil'>extraction Line</marker>.","Evac from AO","Evac from AO"];

["Task1Current"] call BIS_fnc_showNotification;
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