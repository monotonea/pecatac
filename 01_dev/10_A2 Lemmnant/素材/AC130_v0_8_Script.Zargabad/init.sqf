//*****************************************//
/*	init.sqf by LurchiDerLurch for AC130-Script
*	@author: LurchiDerLurch
*	@param: nothing
*	@return: nothing
*	@description: Copy the following in your own init.sqf
*/

//Check for Addon
if (!(isClass(configFile>>"CfgPatches">>"LDL_ac130"))) then 
{
	//No Addon detected
	//Spawn LDL_init
	LDL_init = compile preprocessFileLineNumbers "LDL_ac130\LDL_init.sqf";
	[]spawn LDL_init;    
}
else
{
	//Addon detected.
	//LDL_init = compile preprocessFileLineNumbers "LDL_ac130\LDL_init.sqf";
	//[]spawn LDL_init;
};

//Wait for the init
waitUntil {!isNil "LDL_initDone"};
waitUntil {LDL_initDone};

//Adjustments affect AC130.
LDL_AC130_Adjustments = 
[
	/* 0. Radius*/ 		1000 	/*Explanation: Radius for the rotating AC130. Default: 1000*/,
	/* 1. Height*/ 		1000  /*Explanation: Height for the rotating AC130. Default: 1000*/,
	/* 2. Munition 25mm*/ 	9000  /*Explanation: 25mm Munition. Default: 1000*/,
	/* 3. Munition 40mm*/ 	500	/*Explanation: 40mm Munition. Default: 50*/,
	/* 4. Munition 105*/ 	200	/*Explanation: 105mm Munition. Default: 20*/,
	/* 5. 360° View*/ 	false /*Explanation: Activate 360° view. Default: false*/,
	/* 6. Zoom 25mm*/ 	13	/*Explanation: Maximum zoom level for the 25mm. Default: 9.5 (only numbers between 1 and 10)*/,
	/* 7. Zoom 40mm*/ 	13	/*Explanation: Maximum zoom level for the 40mm. Default: 9 (only numbers between 1 and 10)*/,
	/* 8. Zoom 105mm*/ 	13	/*Explanation: Maximum zoom level for the 105mm. Default: 8 (only numbers between 1 and 10)*/,
	/* 9. Time AI*/ 	180	/*Explanation: Time in seconds the AI controlled AC130 stays in the air. Default: 180*/,
	/*10. Mapclicks*/ 	999	/*Explanation: Available AC130 mapclicks per player. Default: 3*/,
	/*11. Optical Zoom*/ 	false /*Explanation: Enable Optical Zoom. Default: false !BETA only available for rotating AC130 BETA!*/,
	/*12. Delay*/ 		0 	/*Explanation: Delay for mapclick AC130 to arrive. Default: 120*/
];

//Adjustments affect both AC130 and UAV.
LDL_Adjustments =
[
	/* 0. Infantry Strobes*/  [true, true] 	/*Explanation: Enable Infantry Strobes / Show them at startup. Default: [true, true]*/,
	/* 1. Vehicle Detection*/ [false, false]/*Explanation: Enable Vehicle Detection / Show it at startup. Default: [false, false]*/,
	/* 2. Particles*/ 	  true 		/*Explanation: Show Particles. Default: true*/,
	/* 3. Monitor*/           true		/*Explanation: Show Monitor. Default: true*/,
	/* 4. Third-Person View*/ true		/*Explanation: Enable Third-Person View. Default: true*/,
	/* 5. Radio Traffic*/ 	  true		/*Explanation: Enable Radio Traffic at startup. Default: true*/,
	/* 6. Sequence*/ 	  true		/*Explanation: Show sequence at startup. Default: true*/,
	/* 7. Camera Effect*/ 	  1 			/*Explanation: Camera effect at startup: 1 (Nothing), 2 (FLIR white), 3 (FLIR black), 4 (NVG). Default: 1*/,
	/* 8. Script Stop*/ 	  -1			/*Explanation: Time in seconds until script stops. Default: -1 (infinite)*/,
	/* 9. Waypoints*/ 	  false 		/*Explanation: Show waypoints at startup. Default: false*/,
	/*10. Faction*/ 	  faction player 	/*Explanation: Faction belonging the AC130. Default: faction player*/,
	/*11. Side*/ 	  	  side player 	/*Explanation: Side belonging the AC130. Default: side player*/
];

//Adjustments affect UAV.
LDL_UAV_Adjustments = 
[
	/* 0. Radius*/ 				1000 	/*Explanation: Radius for the rotating UAV. Default: 1000*/,
	/* 1. Height*/ 				1000  /*Explanation: Height for the rotating UAV. Default: 1000*/,
	/* 2. Munition Mounted Hellfire*/ 	8  	/*Explanation: Available Hellfires. Default: 8*/,
	/* 3. Munition Hellfire Strike*/ 	3	/*Explanation: Available Hellfires Strikes. Default: 3*/,
	/* 4. Zoom Mounted Hellfire*/           9.5	/*Explanation: Maximum zoom level for the Mounted Hellfire. Default: 9.5 (only numbers between 1 and 10)*/,
	/* 5. Zoom Hellfire Strike*/ 		9.5	/*Explanation: Maximum zoom level for the Hellfire Strike. Default: 9.5 (only numbers between 1 and 10)*/,
	/* 6. Mapclicks*/ 			3	/*Explanation: Available UAV mapclicks per player. Default: 3*/,
	/* 7. Delay*/ 				0 	/*Explanation: Delay for mapclick UAV to arrive. Default: 120*/
];

//Available in game actions to start the AC130.
LDL_inGameActions =
[
	true, //0: AC130 Co-Pilot can activate camera view via "AC130 Camera"
	true, //1: AC130 Pilot can start rotate script via "AC130 Autopilot"
	true, //2: Player can command AI AC130 from the ground via "AC130 Cease/Open Fire", "AC130 Attack Position", "AC130 Return Home"
	true  //3: LDL-Systems: AC130 Pilot and AC130 Co-Pilot have the ability to start coop script (Multiplayer)
];