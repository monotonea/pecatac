waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["SYSTEMS","ACE wounding system enabled.<br/>
Only ammunition in AAVP7"]]; 

player createDiaryRecord ["Diary", ["BLUE FORCES",
"2 infantry squads(<marker name='start'>you</marker> and <marker name='sq2m'>2nd squad</marker>) on 2 AAVP7s are attended to this operation.<br/>
You're one of this infantry squad and senior leader in your squad can take command of your AAVP7 and 2nd sqaud.<br/>
Crown of commander is inheritable.Preference is 'A than B,Smaller number in a team'.<br/>
Commander can activate High-Command system via 'CTRL+SPACE'
<img image='crown.paa' width='400' height='300'/>."]]; 

//--------------------------------------------------------
T2 = player createSimpleTask["SWEEP REMOTE CAMP [OPTIONAL]"]; 
T2 setSimpleTaskDescription["Sweep  <marker name='REMOTE'>ChDkz's remote camp</marker> in this area.","SWEEP REMOTE CAMP [OPTIONAL]","SWEEP REMOTE CAMP [OPTIONAL]"];

T1 = player createSimpleTask["SWEEP MAIN CAMP"]; 
T1 setSimpleTaskDescription["Sweep  <marker name='Main'>ChDkz's main camp</marker> in this area.<br/>
This operation has key significance to manage ongoing situation.","SWEEP MAIN CAMP","SWEEP MAIN CAMP"];

player setCurrentTask T1;