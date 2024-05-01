waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 
player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 
player createDiaryRecord ["Diary", ["3D Marker","Leaders can put markers wherever both on map AND 3D world by action menu and radio command."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Destroy Object"]; 
T1 setSimpleTaskDescription["Destroy the <marker name='mObj'>weapon stash</marker>.","Destroy Object","Destroy Object"];

T2 = player createSimpleTask["Evac from AO"]; 
T2 setSimpleTaskDescription["Get to <marker name='exfil'>extraction point</marker> where an IFV waiting.","Evac from AO","Evac from AO"];


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