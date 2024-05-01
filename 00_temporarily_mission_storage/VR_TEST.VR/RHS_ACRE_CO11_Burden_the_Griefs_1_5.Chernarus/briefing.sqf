waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["SYSTEMS","ACE wounding system enabled.<br/>
Only ammunition in AH11"]]; 

//--------------------------------------------------------
T3 = player createSimpleTask["DO NO HARM TO CIVILIAN"]; 
T3 setSimpleTaskDescription["In any case, civilian casualities are not tolerated.","DO NO HARM TO CIVILIAN","DO NO HARM TO CIVILIAN"];

T2 = player createSimpleTask["EVAC FROM AO"]; 
T2 setSimpleTaskDescription["Evacuate from the area surrounded by red bars","EVAC FROM AO","EVAC FROM AO"];

T1 = player createSimpleTask["EXECUTE TARGET"]; 
T1 setSimpleTaskDescription["Assassinate a local leader of ChDKz.<br/>
It is specified that the target is in <marker name='EXECUTE'>the village</marker> called Mogilevka.<br/>
Once you killed suspicious person, you must check his body to confirm who he was.","EXECUTE TARGET","EXECUTE TARGET"];

player setCurrentTask T1;