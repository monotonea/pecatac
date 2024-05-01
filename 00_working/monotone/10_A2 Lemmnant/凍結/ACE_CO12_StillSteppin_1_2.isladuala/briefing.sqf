
player createDiaryRecord ["Diary", ["No Tracking Marker", "This mission has no ACE Tracking Marker System like real life."]];
player createDiaryRecord ["Diary", ["Hospital And Medikit", "A small field hospital with some medikit is <marker name='hospitalmarker'>here</marker>."]]; 
player createDiaryRecord ["Diary", ["Ammunation", "Some ammunation are in bunkers.<marker name='bunkermarker1'>here</marker> and <marker name='bunkermarker2'>here</marker>.And a <marker name='MTVRmarker'>MTVR</marker> was loaded some ammo."]]; 


player createDiaryRecord ["Diary", ["Explosives", "Alfa Leader and Bravo Leader can detonate the barrels filled up with TNT and bearing balls.<br/>Bombs for Alfa is <marker name='bombpoint_a1'>here</marker>,for Bravo is <marker name='bombpoint_b1'>here</marker>"]];

player createDiaryRecord ["Diary", ["Static Defences In Swonto", "It's hard to say <marker name='swonto'>Swonto</marker> is well defeded,but some arms are.<br/><br/>2 * Mk 19 Granade launcher : placed on 2nd floor of bunkers <marker name='bunkermarker1'>here</marker> and <marker name='bunkermarker2'>here</marker>.<br/>5 * M2 machine gun : lined front to east,<marker name='HMGmarker1'>here</marker>,<marker name='HMGmarker2'>here</marker>,<marker name='HMGmarker3'>here</marker>,<marker name='HMGmarker4'>here</marker> and <marker name='HMGmarker5'>here</marker>.<br/>2 * watch tower : simple but guarded towers,<marker name='Towermarker1'>here</marker> and <marker name='Towermarker2'>here</marker>."]]; 
player createDiaryRecord ["Diary", ["Evacuation", "Two MH-60 helicopters are assigned to this operation.The one is for civilians and the other one is for soldiers."]];
player createDiaryRecord ["Diary", ["Civilian Rehugees", "You must protect the people who want to escape from Duala.<br/>They charterd a <marker name='Civilianmarker'>bus</marker> to take to Swonto."]]; 
player createDiaryRecord ["Diary", ["Situation", "It's all over now that American attempt to intervention in Duala.<br/>Your last mission in this island is to save civilian refugees and evacuate your selves with them.<br/>"]]; 

T3 = player createSimpleTask["Evacuate Yourselves"]; 
T3 setSimpleTaskDescription["After refugees have been saved,you can say good-bye to Duala.", "Evacuate Yourselves", "Evacuate Yourselves"];

T2 = player createSimpleTask["Defend Refugees"]; 
T2 setSimpleTaskDescription["Defend refugees from expected Morltian raid until evac helicopter arrives.", "Defend Refugees", "Defend Refugees"];

T1 = player createSimpleTask["Hold Civilian Refugees"]; 
T1 setSimpleTaskDescription["Initial object is to hold civilian refugee at USMC's <marker name='swonto'>Swonto Defence</marker>.", "Hold Civilian Refugee", "Hold Civilian Refugee"];

player setCurrentTask T1;