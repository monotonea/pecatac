waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["Equipment Annotation","Only group leaders have NVgoggle."]]; 
player createDiaryRecord ["Diary", ["Cognition Commonization","Both group leaders can share their intention and spotted target by put a sphere."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Demolish Weapon Stash"]; 
T1 setSimpleTaskDescription["Demolish Weapon Stash placed in ruined farm.","Demolish Weapon Stash","Demolish Weapon Stash"];

player setCurrentTask T1;

["Task1Current"] call BIS_fnc_showNotification;