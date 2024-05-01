waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["Units Direction Info on GPS","Direction which each player poses are indicated on GPS."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Clear Hostile Position"]; 
T1 setSimpleTaskDescription["Clear hostile position","Clear Hostile Position","Clear Hostile Position"];

["Task1Current", ["Clear Hostile Position"]] call BIS_fnc_showNotification;
["Task1Current"] call BIS_fnc_showNotification;
["Task1Current",["", "Clear Hostile Position"]]  call BIS_fnc_showNotification;
player setCurrentTask T1;