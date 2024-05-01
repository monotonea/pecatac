waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["CREDITS", "
Thanks to<br/>
Spectate script by Kegetys and F2
"]];

player createDiaryRecord ["Diary", ["SYSTEMS","Vanilla Wounding System,so no need to medikits.<br/>
No rucks except radio pack are served.<br/>
Only ammunation in Venom<br/>
Chief Operator can receive info via High-Command mode (CTRL+SPACE) on the Map.<br/>
Fuel,ammo,repair and medical supports are available in <marker name='Start'>the air field</marker>"]]; 

player createDiaryRecord ["Diary", ["Warning Area", "
Be not sure that put the Venom inside the red circled warning area.<br/>
Or, the presence of the chopper is revealed to all hostiles and they may turn lights on so you'll lose your advantages of NV goggles.
"]];

//--------------------------------------------------------

T3 = player createSimpleTask["DESTROY ZU23 [OPITONAL]"]; 
T3 setSimpleTaskDescription["Destroy <marker name='ZU23'>a ZU23</marker> to fly freely.<br/>
<marker name='line1'>Red Lines</marker> indicate ridgeline which is effective to hide from the ZU23."
,"DESTROY ZU23 [OPITONAL]","DESTROY ZU23 [OPITONAL]"];

T2 = player createSimpleTask["RTB"]; 
T2 setSimpleTaskDescription["Once you achieved the task,return to <marker name='Start'>the air field</marker> alive and wait for next sortie.", "RTB", "RTB"];

T1 = player createSimpleTask["DESTROY APCs"]; 
T1 setSimpleTaskDescription["2 BTRs are confirmed at <marker name='obj'>the station of Berezino</marker>.<br/>
Though these condition are uncertain,we need to destroy them.","DESTROY APCs","DESTROY APCs"];

player setCurrentTask T1;