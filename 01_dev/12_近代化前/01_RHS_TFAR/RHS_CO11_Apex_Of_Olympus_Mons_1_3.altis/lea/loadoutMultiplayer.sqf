/**
* Generated by LEA for Arma 3
* Version: 2.0.22
* Sat Feb 14 11:29:24 JST 2015
* Mission file name: RHS_CO11_Apex_Of_Olympus_Mons_1_2.altis
* Mission name: RHS_CO11_Apex_Of_Olympus_Mons_1_2.altis
* Required mods:
* + ArmA 3
* + RHS USAF
* + TFAR
* 
* Call the script: _dummy = [] execvm "lea\loadoutMultiplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//No named crates in this mission.

/**
* Loadout for soldiers units
*/

if (!isNil "unit_0_0") then {
	if (player == unit_0_0) exitwith {
removeallweapons unit_0_0;
removeallassigneditems unit_0_0;
removeBackpack unit_0_0;
removeVest unit_0_0;
removeHeadgear unit_0_0;
removeUniform unit_0_0;
removeGoggles unit_0_0;

unit_0_0 addWeapon "ItemMap";
unit_0_0 addWeapon "ItemWatch";
unit_0_0 addWeapon "ItemCompass";
unit_0_0 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_0 addWeapon "rhsusf_ANPVS_15";
unit_0_0 addWeapon "Binocular";
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_0 addWeapon "rhs_m4a1_m320";
removeBackpack unit_0_0;
unit_0_0 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_0 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_0 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer unit_0_0);
clearMagazineCargoGlobal (backpackContainer unit_0_0);
clearWeaponCargoGlobal (backpackContainer unit_0_0);
(backpackContainer unit_0_0) addmagazinecargoGlobal ["3Rnd_SmokeGreen_Grenade_shell",2];
(backpackContainer unit_0_0) addmagazinecargoGlobal ["3Rnd_SmokeRed_Grenade_shell",2];
(backpackContainer unit_0_0) addmagazinecargoGlobal ["3Rnd_SmokeBlue_Grenade_shell",2];
unit_0_0 addItemToBackpack "SmokeShell";
unit_0_0 addItemToBackpack "SmokeShell";
unit_0_0 addItemToBackpack "SmokeShell";
unit_0_0 addItemToBackpack "SmokeShell";
unit_0_0 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_0);
clearMagazineCargoGlobal (vestContainer unit_0_0);
clearWeaponCargoGlobal (vestContainer unit_0_0);
(vestContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_0 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_0);
clearMagazineCargoGlobal (uniformContainer unit_0_0);
clearWeaponCargoGlobal (uniformContainer unit_0_0);
(uniformContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_0 addWeapon "tf_anprc152";
unit_0_0 selectWeapon (primaryWeapon unit_0_0);
	};
};

if (!isNil "unit_0_1") then {
	if (player == unit_0_1) exitwith {
removeallweapons unit_0_1;
removeallassigneditems unit_0_1;
removeBackpack unit_0_1;
removeVest unit_0_1;
removeHeadgear unit_0_1;
removeUniform unit_0_1;
removeGoggles unit_0_1;

unit_0_1 addWeapon "ItemMap";
unit_0_1 addWeapon "ItemWatch";
unit_0_1 addWeapon "ItemCompass";
unit_0_1 addWeapon "I_UavTerminal";
unit_0_1 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_1 addWeapon "rhsusf_ANPVS_15";
unit_0_1 addWeapon "Binocular";
unit_0_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_1) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_1 addWeapon "rhs_m4a1_m320";
removeBackpack unit_0_1;
unit_0_1 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_1 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_1 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer unit_0_1);
clearMagazineCargoGlobal (backpackContainer unit_0_1);
clearWeaponCargoGlobal (backpackContainer unit_0_1);
(backpackContainer unit_0_1) addmagazinecargoGlobal ["3Rnd_SmokeGreen_Grenade_shell",2];
(backpackContainer unit_0_1) addmagazinecargoGlobal ["3Rnd_SmokeRed_Grenade_shell",2];
(backpackContainer unit_0_1) addmagazinecargoGlobal ["3Rnd_SmokeBlue_Grenade_shell",2];
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_1);
clearMagazineCargoGlobal (vestContainer unit_0_1);
clearWeaponCargoGlobal (vestContainer unit_0_1);
(vestContainer unit_0_1) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_1 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_1);
clearMagazineCargoGlobal (uniformContainer unit_0_1);
clearWeaponCargoGlobal (uniformContainer unit_0_1);
(uniformContainer unit_0_1) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_1 addWeapon "tf_anprc152";
unit_0_1 selectWeapon (primaryWeapon unit_0_1);
	};
};

if (!isNil "unit_0_2") then {
	if (player == unit_0_2) exitwith {
removeallweapons unit_0_2;
removeallassigneditems unit_0_2;
removeBackpack unit_0_2;
removeVest unit_0_2;
removeHeadgear unit_0_2;
removeUniform unit_0_2;
removeGoggles unit_0_2;

unit_0_2 addWeapon "ItemMap";
unit_0_2 addWeapon "ItemWatch";
unit_0_2 addWeapon "ItemCompass";
unit_0_2 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_2 addWeapon "rhsusf_ANPVS_15";
unit_0_2 addWeapon "Binocular";
unit_0_2 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_2) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_2 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_2;
unit_0_2 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_2 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_2 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_2);
clearMagazineCargoGlobal (backpackContainer unit_0_2);
clearWeaponCargoGlobal (backpackContainer unit_0_2);
unit_0_2 addItemToBackpack "SmokeShell";
unit_0_2 addItemToBackpack "SmokeShell";
unit_0_2 addItemToBackpack "SmokeShell";
unit_0_2 addItemToBackpack "SmokeShell";
unit_0_2 addItemToBackpack "rhs_mag_m67";
unit_0_2 addItemToBackpack "rhs_mag_m67";
unit_0_2 addItemToBackpack "rhs_mag_m67";
unit_0_2 addItemToBackpack "rhs_mag_m67";
unit_0_2 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_2);
clearMagazineCargoGlobal (vestContainer unit_0_2);
clearWeaponCargoGlobal (vestContainer unit_0_2);
(vestContainer unit_0_2) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_2 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_2);
clearMagazineCargoGlobal (uniformContainer unit_0_2);
clearWeaponCargoGlobal (uniformContainer unit_0_2);
(uniformContainer unit_0_2) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_2 addWeapon "tf_anprc152";
unit_0_2 selectWeapon (primaryWeapon unit_0_2);
	};
};

if (!isNil "unit_1_3") then {
	if (player == unit_1_3) exitwith {
removeallweapons unit_1_3;
removeallassigneditems unit_1_3;
removeBackpack unit_1_3;
removeVest unit_1_3;
removeHeadgear unit_1_3;
removeUniform unit_1_3;
removeGoggles unit_1_3;

unit_1_3 addWeapon "ItemMap";
unit_1_3 addWeapon "ItemWatch";
unit_1_3 addWeapon "ItemCompass";
unit_1_3 addWeapon "rhsusf_ach_helmet_ocp";
unit_1_3 addWeapon "rhsusf_ANPVS_15";
unit_1_3 addWeapon "Binocular";
unit_1_3 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_1_3 addWeapon "rhs_m4a1_m320";
removeBackpack unit_1_3;
unit_1_3 addPrimaryWeaponItem "acc_pointer_IR";
unit_1_3 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_1_3 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer unit_1_3);
clearMagazineCargoGlobal (backpackContainer unit_1_3);
clearWeaponCargoGlobal (backpackContainer unit_1_3);
(backpackContainer unit_1_3) addmagazinecargoGlobal ["3Rnd_SmokeGreen_Grenade_shell",2];
(backpackContainer unit_1_3) addmagazinecargoGlobal ["3Rnd_SmokeRed_Grenade_shell",2];
(backpackContainer unit_1_3) addmagazinecargoGlobal ["3Rnd_SmokeBlue_Grenade_shell",2];
unit_1_3 addItemToBackpack "SmokeShell";
unit_1_3 addItemToBackpack "SmokeShell";
unit_1_3 addItemToBackpack "SmokeShell";
unit_1_3 addItemToBackpack "SmokeShell";
unit_1_3 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_1_3);
clearMagazineCargoGlobal (vestContainer unit_1_3);
clearWeaponCargoGlobal (vestContainer unit_1_3);
(vestContainer unit_1_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_1_3 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_1_3);
clearMagazineCargoGlobal (uniformContainer unit_1_3);
clearWeaponCargoGlobal (uniformContainer unit_1_3);
(uniformContainer unit_1_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_1_3 addWeapon "tf_anprc152";
unit_1_3 selectWeapon (primaryWeapon unit_1_3);
	};
};

if (!isNil "unit_1_4") then {
	if (player == unit_1_4) exitwith {
removeallweapons unit_1_4;
removeallassigneditems unit_1_4;
removeBackpack unit_1_4;
removeVest unit_1_4;
removeHeadgear unit_1_4;
removeUniform unit_1_4;
removeGoggles unit_1_4;

unit_1_4 addWeapon "ItemMap";
unit_1_4 addWeapon "ItemWatch";
unit_1_4 addWeapon "ItemCompass";
unit_1_4 addWeapon "rhsusf_ach_helmet_ocp";
unit_1_4 addWeapon "rhsusf_ANPVS_15";
unit_1_4 addWeapon "Binocular";
unit_1_4 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_4) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",1];
unit_1_4 addWeapon "rhs_weap_m240B";
removeBackpack unit_1_4;
unit_1_4 addPrimaryWeaponItem "acc_pointer_IR";
unit_1_4 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_1_4 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_1_4);
clearMagazineCargoGlobal (backpackContainer unit_1_4);
clearWeaponCargoGlobal (backpackContainer unit_1_4);
(backpackContainer unit_1_4) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
unit_1_4 addItemToBackpack "SmokeShell";
unit_1_4 addItemToBackpack "SmokeShell";
unit_1_4 addItemToBackpack "SmokeShell";
unit_1_4 addItemToBackpack "SmokeShell";
unit_1_4 addItemToBackpack "rhs_mag_m67";
unit_1_4 addItemToBackpack "rhs_mag_m67";
unit_1_4 addItemToBackpack "rhs_mag_m67";
unit_1_4 addItemToBackpack "rhs_mag_m67";
unit_1_4 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_1_4);
clearMagazineCargoGlobal (vestContainer unit_1_4);
clearWeaponCargoGlobal (vestContainer unit_1_4);
(vestContainer unit_1_4) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
unit_1_4 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_1_4);
clearMagazineCargoGlobal (uniformContainer unit_1_4);
clearWeaponCargoGlobal (uniformContainer unit_1_4);
unit_1_4 addWeapon "tf_anprc152";
unit_1_4 selectWeapon (primaryWeapon unit_1_4);
	};
};

if (!isNil "unit_1_5") then {
	if (player == unit_1_5) exitwith {
removeallweapons unit_1_5;
removeallassigneditems unit_1_5;
removeBackpack unit_1_5;
removeVest unit_1_5;
removeHeadgear unit_1_5;
removeUniform unit_1_5;
removeGoggles unit_1_5;

unit_1_5 addWeapon "ItemMap";
unit_1_5 addWeapon "ItemWatch";
unit_1_5 addWeapon "ItemCompass";
unit_1_5 addWeapon "rhsusf_ach_helmet_ocp";
unit_1_5 addWeapon "rhsusf_ANPVS_15";
unit_1_5 addWeapon "Binocular";
unit_1_5 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_1_5 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_1_5;
unit_1_5 addPrimaryWeaponItem "acc_pointer_IR";
unit_1_5 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_1_5 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_1_5);
clearMagazineCargoGlobal (backpackContainer unit_1_5);
clearWeaponCargoGlobal (backpackContainer unit_1_5);
(backpackContainer unit_1_5) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
unit_1_5 addItemToBackpack "SmokeShell";
unit_1_5 addItemToBackpack "SmokeShell";
unit_1_5 addItemToBackpack "SmokeShell";
unit_1_5 addItemToBackpack "SmokeShell";
unit_1_5 addItemToBackpack "rhs_mag_m67";
unit_1_5 addItemToBackpack "rhs_mag_m67";
unit_1_5 addItemToBackpack "rhs_mag_m67";
unit_1_5 addItemToBackpack "rhs_mag_m67";
unit_1_5 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_1_5);
clearMagazineCargoGlobal (vestContainer unit_1_5);
clearWeaponCargoGlobal (vestContainer unit_1_5);
(vestContainer unit_1_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_1_5 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_1_5);
clearMagazineCargoGlobal (uniformContainer unit_1_5);
clearWeaponCargoGlobal (uniformContainer unit_1_5);
(uniformContainer unit_1_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_1_5 addWeapon "tf_anprc152";
unit_1_5 selectWeapon (primaryWeapon unit_1_5);
	};
};

if (!isNil "unit_1_6") then {
	if (player == unit_1_6) exitwith {
removeallweapons unit_1_6;
removeallassigneditems unit_1_6;
removeBackpack unit_1_6;
removeVest unit_1_6;
removeHeadgear unit_1_6;
removeUniform unit_1_6;
removeGoggles unit_1_6;

unit_1_6 addWeapon "ItemMap";
unit_1_6 addWeapon "ItemWatch";
unit_1_6 addWeapon "ItemCompass";
unit_1_6 addWeapon "rhsusf_ach_helmet_ocp";
unit_1_6 addWeapon "rhsusf_ANPVS_15";
unit_1_6 addWeapon "Binocular";
unit_1_6 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_1_6 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_1_6;
unit_1_6 addPrimaryWeaponItem "acc_pointer_IR";
unit_1_6 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_1_6 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_1_6);
clearMagazineCargoGlobal (backpackContainer unit_1_6);
clearWeaponCargoGlobal (backpackContainer unit_1_6);
unit_1_6 addItemToBackpack "SmokeShell";
unit_1_6 addItemToBackpack "SmokeShell";
unit_1_6 addItemToBackpack "SmokeShell";
unit_1_6 addItemToBackpack "SmokeShell";
unit_1_6 addItemToBackpack "rhs_mag_m67";
unit_1_6 addItemToBackpack "rhs_mag_m67";
unit_1_6 addItemToBackpack "rhs_mag_m67";
unit_1_6 addItemToBackpack "rhs_mag_m67";
unit_1_6 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_1_6);
clearMagazineCargoGlobal (vestContainer unit_1_6);
clearWeaponCargoGlobal (vestContainer unit_1_6);
(vestContainer unit_1_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_1_6 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_1_6);
clearMagazineCargoGlobal (uniformContainer unit_1_6);
clearWeaponCargoGlobal (uniformContainer unit_1_6);
(uniformContainer unit_1_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_1_6 addWeapon "tf_anprc152";
unit_1_6 selectWeapon (primaryWeapon unit_1_6);
	};
};

if (!isNil "unit_2_7") then {
	if (player == unit_2_7) exitwith {
removeallweapons unit_2_7;
removeallassigneditems unit_2_7;
removeBackpack unit_2_7;
removeVest unit_2_7;
removeHeadgear unit_2_7;
removeUniform unit_2_7;
removeGoggles unit_2_7;

unit_2_7 addWeapon "ItemMap";
unit_2_7 addWeapon "ItemWatch";
unit_2_7 addWeapon "ItemCompass";
unit_2_7 addWeapon "rhsusf_ach_helmet_ocp";
unit_2_7 addWeapon "rhsusf_ANPVS_15";
unit_2_7 addWeapon "Binocular";
unit_2_7 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_2_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_2_7 addWeapon "rhs_m4a1_m320";
removeBackpack unit_2_7;
unit_2_7 addPrimaryWeaponItem "acc_pointer_IR";
unit_2_7 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_2_7 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer unit_2_7);
clearMagazineCargoGlobal (backpackContainer unit_2_7);
clearWeaponCargoGlobal (backpackContainer unit_2_7);
(backpackContainer unit_2_7) addmagazinecargoGlobal ["3Rnd_SmokeGreen_Grenade_shell",2];
(backpackContainer unit_2_7) addmagazinecargoGlobal ["3Rnd_SmokeRed_Grenade_shell",2];
(backpackContainer unit_2_7) addmagazinecargoGlobal ["3Rnd_SmokeBlue_Grenade_shell",2];
unit_2_7 addItemToBackpack "SmokeShell";
unit_2_7 addItemToBackpack "SmokeShell";
unit_2_7 addItemToBackpack "SmokeShell";
unit_2_7 addItemToBackpack "SmokeShell";
unit_2_7 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_2_7);
clearMagazineCargoGlobal (vestContainer unit_2_7);
clearWeaponCargoGlobal (vestContainer unit_2_7);
(vestContainer unit_2_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_2_7 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_2_7);
clearMagazineCargoGlobal (uniformContainer unit_2_7);
clearWeaponCargoGlobal (uniformContainer unit_2_7);
(uniformContainer unit_2_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_2_7 addWeapon "tf_anprc152";
unit_2_7 selectWeapon (primaryWeapon unit_2_7);
	};
};

if (!isNil "unit_2_8") then {
	if (player == unit_2_8) exitwith {
removeallweapons unit_2_8;
removeallassigneditems unit_2_8;
removeBackpack unit_2_8;
removeVest unit_2_8;
removeHeadgear unit_2_8;
removeUniform unit_2_8;
removeGoggles unit_2_8;

unit_2_8 addWeapon "ItemMap";
unit_2_8 addWeapon "ItemWatch";
unit_2_8 addWeapon "ItemCompass";
unit_2_8 addWeapon "rhsusf_ach_helmet_ocp";
unit_2_8 addWeapon "rhsusf_ANPVS_15";
unit_2_8 addWeapon "Binocular";
unit_2_8 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_2_8) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_2_8 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_2_8;
unit_2_8 addPrimaryWeaponItem "acc_pointer_IR";
unit_2_8 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_2_8 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_2_8) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",1];
unit_2_8 addWeapon "rhs_weap_fgm148";
removeBackpack unit_2_8;
unit_2_8 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_2_8);
clearMagazineCargoGlobal (backpackContainer unit_2_8);
clearWeaponCargoGlobal (backpackContainer unit_2_8);
(backpackContainer unit_2_8) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",2];
unit_2_8 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_2_8);
clearMagazineCargoGlobal (vestContainer unit_2_8);
clearWeaponCargoGlobal (vestContainer unit_2_8);
(vestContainer unit_2_8) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_2_8 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_2_8);
clearMagazineCargoGlobal (uniformContainer unit_2_8);
clearWeaponCargoGlobal (uniformContainer unit_2_8);
(uniformContainer unit_2_8) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_2_8 addWeapon "tf_anprc152";
unit_2_8 selectWeapon (primaryWeapon unit_2_8);
	};
};

if (!isNil "unit_2_9") then {
	if (player == unit_2_9) exitwith {
removeallweapons unit_2_9;
removeallassigneditems unit_2_9;
removeBackpack unit_2_9;
removeVest unit_2_9;
removeHeadgear unit_2_9;
removeUniform unit_2_9;
removeGoggles unit_2_9;

unit_2_9 addWeapon "ItemMap";
unit_2_9 addWeapon "ItemWatch";
unit_2_9 addWeapon "ItemCompass";
unit_2_9 addWeapon "rhsusf_ach_helmet_ocp";
unit_2_9 addWeapon "rhsusf_ANPVS_15";
unit_2_9 addWeapon "Binocular";
unit_2_9 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_2_9) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_2_9 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_2_9;
unit_2_9 addPrimaryWeaponItem "acc_pointer_IR";
unit_2_9 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_2_9 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_2_9);
clearMagazineCargoGlobal (backpackContainer unit_2_9);
clearWeaponCargoGlobal (backpackContainer unit_2_9);
(backpackContainer unit_2_9) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",2];
unit_2_9 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_2_9);
clearMagazineCargoGlobal (vestContainer unit_2_9);
clearWeaponCargoGlobal (vestContainer unit_2_9);
(vestContainer unit_2_9) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_2_9 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_2_9);
clearMagazineCargoGlobal (uniformContainer unit_2_9);
clearWeaponCargoGlobal (uniformContainer unit_2_9);
(uniformContainer unit_2_9) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_2_9 addWeapon "tf_anprc152";
unit_2_9 selectWeapon (primaryWeapon unit_2_9);
	};
};

if (!isNil "unit_2_10") then {
	if (player == unit_2_10) exitwith {
removeallweapons unit_2_10;
removeallassigneditems unit_2_10;
removeBackpack unit_2_10;
removeVest unit_2_10;
removeHeadgear unit_2_10;
removeUniform unit_2_10;
removeGoggles unit_2_10;

unit_2_10 addWeapon "ItemMap";
unit_2_10 addWeapon "ItemWatch";
unit_2_10 addWeapon "ItemCompass";
unit_2_10 addWeapon "rhsusf_ach_helmet_ocp";
unit_2_10 addWeapon "rhsusf_ANPVS_15";
unit_2_10 addWeapon "Binocular";
unit_2_10 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_2_10) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_2_10 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_2_10;
unit_2_10 addPrimaryWeaponItem "acc_pointer_IR";
unit_2_10 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_2_10 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_2_10);
clearMagazineCargoGlobal (backpackContainer unit_2_10);
clearWeaponCargoGlobal (backpackContainer unit_2_10);
unit_2_10 addItemToBackpack "SmokeShell";
unit_2_10 addItemToBackpack "SmokeShell";
unit_2_10 addItemToBackpack "SmokeShell";
unit_2_10 addItemToBackpack "SmokeShell";
unit_2_10 addItemToBackpack "rhs_mag_m67";
unit_2_10 addItemToBackpack "rhs_mag_m67";
unit_2_10 addItemToBackpack "rhs_mag_m67";
unit_2_10 addItemToBackpack "rhs_mag_m67";
unit_2_10 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_2_10);
clearMagazineCargoGlobal (vestContainer unit_2_10);
clearWeaponCargoGlobal (vestContainer unit_2_10);
(vestContainer unit_2_10) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_2_10 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_2_10);
clearMagazineCargoGlobal (uniformContainer unit_2_10);
clearWeaponCargoGlobal (uniformContainer unit_2_10);
(uniformContainer unit_2_10) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_2_10 addWeapon "tf_anprc152";
unit_2_10 selectWeapon (primaryWeapon unit_2_10);
	};
};

