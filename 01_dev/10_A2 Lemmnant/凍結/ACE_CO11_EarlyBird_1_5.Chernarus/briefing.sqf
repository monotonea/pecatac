waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["CREDITS", "
Thanks to<br/>
<br/>
Equip script by Type 90<br/>
LHD spawner by ArMaTeC<br/>
Spectate script by Kegetys and F2<br/>
"]];

player createDiaryRecord ["Diary", ["AIR DEFENCE COMPLEX",
"Chedaki organizes their air defence complex which provided by Russia.<br/>
This system is consisted by CAP planes ,<marker name='West_Area'>west</marker> and <marker name='East_Area'>east</marker> raders.<br/>
Any aircraft flying above 50m in rader coverd area will be acquired.<br/>
You can neutralize this system by destroy each rader."]]; 
player createDiaryRecord ["Diary", ["RESUPPLY",
"If the bird has lack of ammo,armor or gas,you can take resupply on <marker name='Khe_Sanh'>the ship</marker>."]]; 

//--------------------------------------------------------

T5 = player createSimpleTask["DESTROY EAST RADAR[OPITONAL]"]; 
T5 setSimpleTaskDescription["Destroy <marker name='East_Area'>the east radar</marker> to fly freely.","DESTROY EAST RADAR[OPITONAL]","DESTROY EAST RADAR[OPITONAL]"];


T4 = player createSimpleTask["DESTROY WEST RADAR[OPITONAL]"]; 
T4 setSimpleTaskDescription["Destroy <marker name='West_Area'>the west radar</marker> to fly freely.","DESTROY WEST RADAR[OPITONAL]","DESTROY WEST RADAR[OPITONAL]"];


T2 = player createSimpleTask["RTB"]; 
T2 setSimpleTaskDescription["Once you achieved the task,return to <marker name='Khe_Sanh'>the ship</marker> alive and wait for next sortie.", "RTB", "RTB"];

T1 = player createSimpleTask["SWEEP INSURGENT"]; 
T1 setSimpleTaskDescription["To lead <marker name='amp'>main amphibious assault</marker> to succeed,a UH-1Y Venom (callsign:Early Bird) and an infantry squad (callsign:Dizzy) are assigned to sweep mission.<br/>
On this mission,the bird takes wing from <marker name='Khe_Sanh'>USS Khe Sanh</marker> to <marker name='Conce'>ChDKZ forces concentrating area</marker> and sweep them out.","SWEEP INSURGENT","SWEEP INSURGENT"];

player setCurrentTask T1;