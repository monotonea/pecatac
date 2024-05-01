
player createDiaryRecord ["Diary", ["No Tracking Marker", "This mission has no ACE Tracking Marker System like real life."]]; 
player createDiaryRecord ["Diary", ["IED", "Watch your steps marines!<br/>Molatian Army has learned the latest Asymmetric-warfare technic,IED.<br/><br/><img image='InstantED.jpg' width='300' height='175'/>"]]; 
player createDiaryRecord ["Diary", ["Camara Depot", "Be careful when you step into <marker name='CamaraDepot'>Camara Depot</marker>."]]; 
player createDiaryRecord ["Diary", ["UAV", "You can use UAV controller in <marker name='Boogaloo'>Base Boogaloo</marker>."]]; 
player createDiaryRecord ["Diary", ["Artillery", "You can use a mortor with Firing Interface which placed in <marker name='Boogaloo'>Base Boogaloo</marker>.<br/>Engineer in Alpha squad may competent to this duty."]]; 
player createDiaryRecord ["Diary", ["Boats", "You must across the sea to reach <marker name='Camara'>the town</marker>.<br/>The enemy has very small harbor <marker name='Boats'>here</marker> so you can get it.<br/>And <marker name='Cove'>this cove</marker> may be good to land."]]; 

T3 = player createSimpleTask["Seize Camara"]; 
T3 setSimpleTaskDescription["Seize <marker name='Camara'>the town</marker> abounds in enemies!", "Seize Camara", "Seize Camara"];

T2 = player createSimpleTask["Destroy Anti-Artillery Rader"]; 
T2 setSimpleTaskDescription["Destroy the enemy <marker name='ArtyRaderMarker'>Anti-Artillery Rader</marker>.<br/>If you forget to execute this task,your artillery fire will be detected and artyman will face the enemy firing back.<br/>The anti-arty rader is on the skirt of Camara.So it's not guraded closely.", "Destroy Anti-Artillery Rader", "Destroy Anti-Artillery Rader"];

T1 = player createSimpleTask["Take over the enemy base"]; 
T1 setSimpleTaskDescription["Attack the enemy base where we named <marker name='Boogaloo'>Boogaloo</marker>.<br/>There we will get everything we need to seize <marker name='Camara'>Camara</marker>!", "Take over the enemy base", "Take over the enemy base"];

player setCurrentTask T1;