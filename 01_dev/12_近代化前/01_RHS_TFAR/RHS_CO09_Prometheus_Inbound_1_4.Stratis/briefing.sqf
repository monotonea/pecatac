waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["TIME OF OPERATION","Time of this operation is quite random because who decides the time to initiate a battle is not us but the enemy."]]; 

player createDiaryRecord ["Diary", ["Enemy Detection","Pink Circles on the map indicates positions of enemy units detected by land embeded sensor."]]; 

//--------------------------------------------------------
T1 = player createSimpleTask["SWEEP INFILTRATED ENEMY"]; 
T1 setSimpleTaskDescription["Sweep out the enemy landed southern part of Stratis.Helicopter transportation is available but the chopper does not have enough capacity for entire our infantries.","SWEEP INFILTRATED ENEMY","SWEEP INFILTRATED ENEMY"];

T2 = player createSimpleTask["HOLD LZ Connor"]; 
T2 setSimpleTaskDescription["Be sure not to lost <marker name='mConnor'>our supply depot</marker>.","HOLD LZ Connor","HOLD LZ Connor"];

player setCurrentTask T1;

["Task1Current"] call BIS_fnc_showNotification;