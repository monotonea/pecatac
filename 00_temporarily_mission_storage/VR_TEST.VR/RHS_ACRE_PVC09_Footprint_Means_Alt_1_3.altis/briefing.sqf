waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["SDV","In this operation we use SDV to both INFIL and EXFIL.</br>Make sure not to expose vehicles while operation in order to use it on EXFIL."]]; 

player createDiaryRecord ["Diary", ["Enemy quantity and quality","OPFOR deploys 9 infantry squads,1 mortor and some quad copters organaized under HIGH COMMANDING OFFICER."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["RETRIVE DOCUMENT"]; 
T1 setSimpleTaskDescription["Retrive an intelligence document located in this <marker name='mCamp'>camp</marker>.","RETRIVE DOCUMENT","RETRIVE DOCUMENT"];

T2 = player createSimpleTask["EXFIL"]; 
T2 setSimpleTaskDescription["Exfil out of <marker name='mLine'>this line</marker> to be recoverd by the submarine.","EXFIL","EXFIL"];

player setCurrentTask T1;