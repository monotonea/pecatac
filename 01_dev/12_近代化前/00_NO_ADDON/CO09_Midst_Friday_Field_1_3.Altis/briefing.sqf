waitUntil {!(isNull player)};
waitUntil {player==player};

//player createDiaryRecord ["Diary", ["SDV","In this operation we use SDV to both INFIL and EXFIL.</br>Make sure not to expose vehicles while operation in order to use it on EXFIL."]]; 

//player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["Destroy Object"]; 
T1 setSimpleTaskDescription["Destroy the <marker name='mObj'>weapon stash</marker>.","Destroy Object","Destroy Object"];


player setCurrentTask T1;