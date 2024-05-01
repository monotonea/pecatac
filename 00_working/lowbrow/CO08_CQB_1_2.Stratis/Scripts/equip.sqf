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

removeAllWeapons _unit;
removeAllItems _unit;
RemoveBackPack _unit;

_unit additem "FirstAidKit";

switch(_type) do{
	case "RM":{
		_unit addWeapon "arifle_Mk20_F";
		_unit addMagazines ["30Rnd_556x45_stanag", 5];
		_unit addMagazines ["30Rnd_556x45_stanag_Tracer_Yellow", 3];
		_unit addMagazines ["HandGrenade", 4];
		_unit addMagazines ["Smokeshell", 2];
		_unit addbackpack "b_outdoorpack_tan"
	};
	
	case "AR":{
		_unit addWeapon "LMG_Mk200_F";
		_unit addMagazines ["200Rnd_65x39_cased_Box", 3];
		_unit addMagazines ["HandGrenade", 4];
		_unit addMagazines ["Smokeshell", 2];
	};
	
	case "TL":{
		_unit addWeapon "arifle_Mk20_GL_F";
		_unit addMagazines ["30Rnd_556x45_stanag", 5];
		_unit addMagazines ["30Rnd_556x45_stanag_Tracer_Yellow", 3];
		_unit addMagazines ["HandGrenade", 4];
		_unit addMagazines ["Smokeshell", 2];
		_unit addMagazines ["1Rnd_HE_Grenade_shell", 10];
		_unit addMagazines ["1Rnd_Smoke_Grenade_shell", 4];
		_unit addweapon "rangefinder";
		_unit additem "ItemGPS";
	};
	
	case "MED":{
		_unit addWeapon "SMG_01_F";
		_unit addMagazines ["30Rnd_45ACP_Mag_SMG_01", 8];
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["Smokeshell", 3];
		_unit addMagazines ["SmokeshellOrange", 6];
			_unit addbackpack "B_AssaultPack_blk";
			{ _unit addItem _x } forEach ["Medikit","FirstAidKit","FirstAidKit","FirstAidKit","FirstAidKit","FirstAidKit","FirstAidKit","FirstAidKit"];

	};
};
