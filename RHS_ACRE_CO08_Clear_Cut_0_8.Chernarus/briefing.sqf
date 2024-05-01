waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 
player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Seize Area"]; 
T1 setSimpleTaskDescription["Seize all blocks, hold every corners, clear every buildings","Seize Area","Seize Area"];

["Task1Current"] call BIS_fnc_showNotification;
player setCurrentTask T1;