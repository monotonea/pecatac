if (isServer) then {
						nul = [guerilla1] execVM "guerillaStrike.sqf";
						nul = [guerilla2] execVM "guerillaStrike.sqf";
						nul = [guerilla3] execVM "guerillaStrike.sqf";
						nul = [guerilla4] execVM "guerillaStrike.sqf";
						nul = [guerilla5] execVM "guerillaStrike.sqf";
						nul = [guerilla6] execVM "guerillaStrike.sqf";
						nul = [guerilla7] execVM "guerillaStrike.sqf";
						nul = [guerilla8] execVM "guerillaStrike.sqf";
						nul = [guerilla9] execVM "guerillaStrike.sqf";
						nul = [guerilla10] execVM "guerillaStrike.sqf";
						if ((date select 3) > 20) then {nul = [guerilla11] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla12] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla13] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla14] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla15] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla16] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla17] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla18] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla19] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla20] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla21] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla22] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla23] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla24] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla25] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla26] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla27] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla28] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla29] execVM "guerillaStrike.sqf";};
						if ((date select 3) > 20) then {nul = [guerilla30] execVM "guerillaStrike.sqf";};
					};

T2 = player createSimpleTask["SWEEP TALIBANS"]; 
T2 setSimpleTaskDescription["To save your lives and stabilize the district,neutralize all guerillas who has a weapon in his hand.", "SWEEP TALIBANS", "SWEEP TALIBANS"];
T2 setTaskState "assigned";
player setCurrentTask T2;

taskHint ["NEW OBJECTIVE: \n SWEEP TALIBANS",[1,1,1,1],"taskNew"];