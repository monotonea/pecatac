//////////////////////////////////////////////////////////////////
//	equip.sqf		Origin and element created by Type90
//	                Optimized for this mission by Monotone
//////////////////////////////////////////////////////////////////
if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};

sleep 0.1;

_unit = _this select 0;

if (!isServer) then {
	if ( (_unit==player) || (player == leader group _unit) ) then
	{
		waitUntil { local _unit };
	};
	sleep 0.1;
};
if (!local _unit) exitwith {};
_type = _this select 1;

_magAR		= "30Rnd_556x45_Stanag";
_magMG		= "100Rnd_762x51_M240";
_magGR		= "1Rnd_HE_M203";
_magFlR		= "FlareRed_M203";
_magFlG		= "FlareGreen_M203";
_magHEDP	= "SMAW_HEDP";

_gr			= "HandGrenade_West";
_smoke		= "SmokeShell";

_wepAR		= "ACE_M27_IAR_CCO";
removeAllWeapons _unit;

switch ( _type ) do {
	case "TL": {
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke,
												_gr,
												"ACE_Battery_Rangefinder",
												_magGR,_magGR,_magGR,_magGR,
												_magFlR,_magFlR,_magFlG,_magFlG
											];
		{ _unit addWeapon _x }		forEach	["M4A1_HWS_GL","ACE_PRC119","Binocular_Vector","NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];
	};
	case "MG": {
		{ _unit addMagazine _x }	forEach	[	_magMG,_magMG,_magMG,_magMG,
												_smoke,_smoke,
												_gr,_gr
											];
		{ _unit addWeapon _x }		forEach	["m240","NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];

	};
	case "MGS": {
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_magMG,_magMG,_magMG
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];
	};
	case "AT": {
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_magHEDP,_magHEDP,_magHEDP
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"SMAW","NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];
	};	

	case "ENG": {
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke,
												_gr,_gr
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];
	};		
	case "MED": {
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_smoke,_gr
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVgoggles","ItemGPS","ACE_Earplugs","ACE_Map"];

	};
};
_primaryWeapon = primaryWeapon _unit;
_unit selectWeapon _primaryWeapon;
_muzzles = getArray( configFile >> "cfgWeapons" >> _primaryWeapon >> "muzzles" );
_unit selectWeapon ( _muzzles select 0 );
