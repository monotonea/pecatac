waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["SYSTEMS","ACE wounding system enabled.<br/>
Only ammunition in cars and tracks"]]; 

player createDiaryRecord ["Diary", ["Mortar","Each sides equipped 1 mortar pipe.<br/>
<br/>
12 HE shells and 12 smokes are to supplied.<br/>
You must wait for 180 secs for this supplement.<br/>
<br/>
Mortar is automatically transported when the track runs its engine."]]; 
//--------------------------------------------------------
T1 = player createSimpleTask["SWEEP THE ENEMY"]; 
T1 setSimpleTaskDescription["Drive your enemy out!<br/>
You can grab the victory when they lose 60% of soldiers (and vice versa).","SWEEP THE ENEMY","SWEEP THE ENEMY"];

player setCurrentTask T1;