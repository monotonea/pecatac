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

_roll = _this select 1;

//	Remove existing items
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//	クラス名でスイッチ
switch ( _roll ) do {
//	TL
	case "TL": {
	
comment "Add containers";
_unit forceAddUniform "U_O_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_762x39mm_U";};
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addVest "V_RebreatherIR";
_unit addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 1 do {_unit addItemToBackpack "NVGoggles_OPFOR";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm_U";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_VG40MD_White";};
_unit addGoggles "G_I_Diving";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak103_gp25";
_unit addPrimaryWeaponItem "rhs_acc_dtk4long";
_unit addPrimaryWeaponItem "rhs_acc_1p78";
_unit addWeapon "hgun_Rook40_F";
_unit addHandgunItem "muzzle_snds_L";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";
	};

//	ライフルマン
	case "RM": {

comment "Add containers";
_unit forceAddUniform "U_O_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_762x39mm";};
_unit addVest "V_RebreatherIR";
_unit addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 1 do {_unit addItemToBackpack "NVGoggles_OPFOR";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm_U";};
_unit addGoggles "G_I_Diving";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak104";
_unit addPrimaryWeaponItem "rhs_acc_dtk4screws";
_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";
_unit addPrimaryWeaponItem "rhs_acc_1p78";
_unit addWeapon "hgun_Rook40_F";
_unit addHandgunItem "muzzle_snds_L";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";
	};

//	メディック
	case "MD": {

comment "Add containers";
_unit forceAddUniform "U_O_Wetsuit";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_762x39mm";};
_unit addVest "V_RebreatherIR";
_unit addBackpack "B_Kitbag_sgg";
_unit addItemToBackpack "NVGoggles_OPFOR";
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_plasmaIV_500";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm_U";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addGoggles "G_I_Diving";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak104";
_unit addPrimaryWeaponItem "rhs_acc_dtk4screws";
_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";
_unit addPrimaryWeaponItem "rhs_acc_1p78";
_unit addWeapon "hgun_Rook40_F";
_unit addHandgunItem "muzzle_snds_L";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";

	};
};
