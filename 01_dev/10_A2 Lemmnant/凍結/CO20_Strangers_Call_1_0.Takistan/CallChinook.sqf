CallChinook = true;

if ((taskstate T1) != "Succeeded") then {T1 setTaskState "Failed"};
if ((taskstate T1) != "Succeeded") then {taskHint ["OBJECTIVE FAILED: \n INVESTIGATE MULLADOST",[1,0.1,0,1],"taskFailed"]};

sleep 2;

if ((taskstate T2) != "Succeeded") then {T2 setTaskState "Failed"};
if ((taskstate T2) != "Succeeded") then {taskHint ["OBJECTIVE FAILED: \n SWEEP TALIBANS",[1,0.1,0,1],"taskFailed"]};

if ((taskstate T4) != "Succeeded") then {T4 setTaskState "Failed"};

sleep 4;

if ((count (units FTa)) >=1 ) then {(leader FTa) sideChat "This is patrol team from FOB Artibella,We've lost a lot of our men in combat operation!"};
if (((count (units FTa)) == 0) and ((count (units FTb)) >= 1)) then {(leader FTb) sideradio "This is patrol team from FOB Artibella,We've lost a lot of our men in combat operation!"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) >= 1)) then {(leader FTc) sideradio "This is patrol team from FOB Artibella,We've lost a lot of our men in combat operation!"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) == 0) and ((count (units FTd)) >= 1)) then {(leader FTd) sideradio "This is patrol team from FOB Artibella,We've lost a lot of our men in combat operation!"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) == 0) and ((count (units FTd)) == 0)  and ((count (units FTe)) >= 1)) then {(leader FTe) sideradio "This is patrol team from FOB Artibella,We've lost a lot of our men in combat operation!"};

sleep 5;

if ((count (units FTa)) >=1 ) then {(leader FTa) sideChat "Request to abort current mission and to send evacuation,do you read?"};
if (((count (units FTa)) == 0) and ((count (units FTb)) >= 1)) then {(leader FTb) sideradio "Request to abort current mission and to send evacuation,do you read?"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) >= 1)) then {(leader FTc) sideradio "Request to abort current mission and to send evacuation,do you read?"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) == 0) and ((count (units FTd)) >= 1)) then {(leader FTd) sideradio "Request to abort current mission and to send evacuation,do you read?"};
if (((count (units FTa)) == 0) and ((count (units FTb)) == 0) and ((count (units FTc)) == 0) and ((count (units FTd)) == 0)  and ((count (units FTe)) >= 1)) then {(leader FTe) sideradio "Request to abort current mission and to send evacuation,do you read?"};

sleep 11;

[West,"HQ"] sideChat "Understood.Chinook bird is heading at gird 070-013,hold on!";

sleep 3;

T3 = player createSimpleTask["EVACUATE FROM AO"]; 
T3 setSimpleTaskDescription["Your platoon got too many casualties.Evacuate from AO by an evac helicopter.<br/>The chopper will pick you up at <marker name='LandPosMarker'>070-013</marker>.", "EVACUATE FROM AO", "EVACUATE FROM AO"];
player setCurrentTask T3;

taskHint ["NEW OBJECTIVE: \n EVACUATE FROM OA",[1,1,1,1],"taskNew"];

"LandPosMarker" setMarkerType "hd_pickup";