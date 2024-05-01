/*******************************************************************************
 *	I N I T   F I L E   v 2 . 0
 *	Multiplayer compatible
 *	All commands except the commands in "isserver" block will be executed
 *	on server AND clients.  
 ******************************************************************************/  
scriptName "initJIPcompatible.sqf: 1";
if (isnull player) exitwith {};

BIS_LS_helicall = false;
end1 = false;

/*******************************************************************************
 *	COLOR CORRECTION - POSTPROCESS
 *	https://wiki.bistudio.com/index.php/Post_efekty_dokumentace_(Post_effects_documentation) 
 ******************************************************************************/  
"colorCorrections" ppEffectAdjust [1, 1.1, -0.003, [0.0, 0.0, 0.0, 0.0], [0.4, 0.6, 0.9, 0.75], [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit 1;
"colorCorrections" ppEffectEnable true;


if (isServer) then //COMMANDS IN FOLLOWING BLOCK WILL BE EXECUTED ONLY ON SERVER 
{
	waitUntil {!(isNil "BIS_fnc_init")};

	/***********************************************************************
	 *	MISSION'S MAIN SCOPE INITIALIZATION
	 *	All mission's variables(except handlers) should be stored 
	 *	into this logic
	 **********************************************************************/  
	_missionScopeGroup = createGroup sideLogic; 
	"Logic" createUnit [[10,10,0], _missionScopeGroup, "BIS_missionScope = this"];
	publicVariable "BIS_missionScope";

	/***********************************************************************
	 *	MISSION'S MAIN FSM AND GROUP SPECIFIC FSMs EXECUTION
	 *	+ SQF script execution  
	 **********************************************************************/
	BIS_grpMainFSM = BIS_grpMain execFSM "ca\missions_e\MPScenarios\MPE1_LaserShow.Takistan\grpMain.fsm";

	/***********************************************************************
	 *	MISSION VARIABLES INITIALISATION
	 *	Use setVariable/getVariable commands to set/get variables   
	 **********************************************************************/
	
	/*******************************************************************************
	 *	TASKS
	 *	from MISSION ANALYSIS -> SCENARIO TEXTS -> TASKS
	 *	createTaskSet  
	 ******************************************************************************/
	[] spawn {
		//_nic = [objNull, player, rCREATETASKSET, "objExfil", [ localize "STR_EP1_initJIPcompatible.sqf0_13",  localize "STR_EP1_initJIPcompatible.sqf1_13",  localize "STR_EP1_initJIPcompatible.sqf2_12"]] call RE;
		_nic = [objNull, leader BIS_grpMain, "per", rCREATETASKSET, "objVillage", [ {localize "STR_EP1_initJIPcompatible.sqf3_12"},  {localize "STR_EP1_initJIPcompatible.sqf4_12"},  {localize "STR_EP1_initJIPcompatible.sqf5_10"}]] call RE;
		_nic = [objNull, leader BIS_grpBravo, "per", rCREATETASKSET, "objVillage2", [ {localize "STR_EP1_initJIPcompatible.sqf3_12"},  {localize "STR_EP1_initJIPcompatible.sqf4_12"},  {localize "STR_EP1_initJIPcompatible.sqf5_10"}]] call RE;
	};

	/***********************************************************************
	 *	GLOBAL CAMPAIGN VARIABLES INITIALISATION
	 *	Only GLOBAL CAMPAIGN variables with prefix BIS_	
	 *	Used variables are listed on the bottom of this page:
	 *	https://wiki.bistudio.com/index.php/Category:ArmA2_Expansion_Campaign  
	 **********************************************************************/

	/***********************************************************************
	 *	DIARY RECORDS
	 *	from MISSION ANALYSIS -> SCENARIO TEXTS -> DIARY 
	 *	createDiaryRecord 
	 **********************************************************************/  
	 {
		_nic = [objNull, _x, "per", rCREATEDIARYRECORD,  {localize "STR_EP1_initJIPcompatible.sqf3_3"},  {localize "STR_EP1_initJIPcompatible.sqf13_7"}] call RE;
		_nic = [objNull, _x, "per", rCREATEDIARYRECORD,  {localize "STR_EP1_initJIPcompatible.sqf5_2"},  {localize "STR_EP1_initJIPcompatible.sqf14_6"}] call RE;
		_nic = [objNull, _x, "per", rCREATEDIARYRECORD,  {localize "STR_EP1_initJIPcompatible.sqf7_3"},  {localize "STR_EP1_initJIPcompatible.sqf15_6"}] call RE;
		_nic = [objNull, _x, "per", rCREATEDIARYRECORD,  {localize "STR_EP1_initJIPcompatible.sqf9_3"},  {localize "STR_EP1_initJIPcompatible.sqf16_5"}] call RE;
		_nic = [objNull, _x, "per", rCREATEDIARYRECORD,  {localize "STR_EP1_initJIPcompatible.sqf11_2"},  {localize "STR_EP1_initJIPcompatible.sqf17_5"}] call RE;
	} forEach (units BIS_grpMain + units BIS_grpBravo);

	/***********************************************************************
	 *	ZORA SETTINGS
	 *	https://wiki.bistudio.com/index.php/Zora 
	 **********************************************************************/

	/***********************************************************************
	 *	ALICE RESPECT SETTINGS
	 *	https://wiki.bistudio.com/index.php/Alice 
	 **********************************************************************/

	/***********************************************************************
	 *	ACM SETTINGS
	 *	https://wiki.bistudio.com/index.php/Ambient_Combat 
	 **********************************************************************/		

	/***********************************************************************
	 *	ADDITIONAL STUFF
	 **********************************************************************/
	bis_grpmain setGroupId [localize "str_cfg_grpnames_alpha"];
	bis_grpbravo setGroupId [localize "str_cfg_grpnames_bravo"];
};

/*******************************************************************************
 *	TASKHANDLER
 *	Run outside the isserver block 
 ******************************************************************************/

waitUntil {!(isNil "BIS_fnc_init")};

_executor1 = leader BIS_grpMain;
_executor2 = leader BIS_grpBravo;

{if (isPlayer _x) then {_executor1 = _x}} forEach units BIS_grpMain;
{if (isPlayer _x) then {_executor2 = _x}} forEach units BIS_grpBravo;

[_executor1, [
	["objVillage", 1],
	["objExfil", 2]
]] call BIS_fnc_taskHandler;

[_executor2, [
	["objVillage2", 1],
	["objExfil2", 2]
]] call BIS_fnc_taskHandler;

[] spawn {
	if (isnil "bis_fnc_hints") exitwith {};
	//--- Init
	//Å´Ç±Ç±Ç≈ÉqÉìÉgè¡ÇµÇƒÇÈ
	//[] call bis_fnc_hints;

	//--- NVG
	call BIS_AdvHints_setDefaults;
	BIS_AdvHints_THeader = localize "STR_EP1_mission.fsmFSM_States_Take_NVG0";
	BIS_AdvHints_TInfo = "";
	BIS_AdvHints_TAction = localize "STR_EP1_mission.fsmFSM_States_Start_NVG1";
	BIS_AdvHints_TBinds = [
		localize "STR_EP1_hunt2",
		{'NightVision' call BIS_getKeyBind}
	];
	BIS_AdvHints_Text = call BIS_AdvHints_formatText;
	BIS_AdvHints_HideCond = "currentvisionMode player == 1";
	call BIS_AdvHints_showHint;

	//--- Laser
	call BIS_AdvHints_setDefaults;
	BIS_AdvHints_THeader = localize "STR_EP1_mission.fsmFSM_States_Take_Laser0";
	BIS_AdvHints_TInfo = localize "STR_EP1_mission.fsmFSM_States_Start_Laser0";
	BIS_AdvHints_TAction = localize "STR_EP1_mission.fsmFSM_States_Start_Laser1";
	BIS_AdvHints_TBinds = [
		localize "STR_EP1_hunt4",
		{'HeadLights' call BIS_getKeyBind}
	];
	BIS_AdvHints_Text = call BIS_AdvHints_formatText;
	BIS_AdvHints_KeyPress = "HeadLights";
	call BIS_AdvHints_showHint;

	//--- Remove hint
	hintsilent "";

	//--- Secondary sights
	if (primaryweapon player == "SCAR_H_STD_EGLM_Spect") then {
		waituntil {cameraview == "gunner"};
		call BIS_AdvHints_setDefaults;
		BIS_AdvHints_TInfo = localize "STR_EP1_mission.fsmFSM_States_Optics1";
		BIS_AdvHints_TAction = localize "STR_EP1_mission.fsmFSM_States_No1";
		BIS_AdvHints_TBinds = [localize "STR_EP1_mission.fsmFSM_States_No2",{'OpticsMode' call BIS_getKeyBind}];
		BIS_AdvHints_Text = call BIS_AdvHints_formatText;
		BIS_AdvHints_KeyPress = "OpticsMode";
		call BIS_AdvHints_showHint;
	};

	//--- Remove hint
	hintsilent "";
};
