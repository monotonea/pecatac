GPSexplanation =  player createDiaryRecord ["diary", ["GPS system","
We can know where USMC's car is via our place beacon on their cars.
<br/>HMMHV is <marker name='trackmarker1'>here</marker> and VW Golf is <marker name='trackmarker2'>here</marker>.
"]];


CivWeap = player createDiaryRecord ["diary", ["Our weapons","
Weapons we have are below<br/><br/>
Satchel Charge *5<br/>
Cz550 Sniper Rifle *2<br/>
Makarov Pistols *6
"]];

T2c = player createSimpleTask ["Deny the officer to the ship"]; 
T2c setSimpleTaskDescription["Guerillas can also accomplish this mission to deny the officer to the ship by 15:30.", "Deny the officer to the ship", "Deny the officer to the ship"];

T1c = player createSimpleTask ["Eliminate the officer"]; 
T1c setSimpleTaskDescription["Eliminate an USMC officer(1-1-A).He moves form <marker name='Balota'>Balota Airstrip</marker> to the <marker name='ship'>destroyer</marker> which anchored in Chernogrosk.", "Eliminate the officer", "Eliminate the officer"];