/**
* Generated by LEA for Arma 3
* Version: 2.0.22
* Sat Feb 14 11:23:44 JST 2015
* Mission file name: RHS_CO08_Orphans_Back_1_3.Altis
* Mission name: RHS_CO08_Orphans_Back_1_3.Altis
* Required mods:
* + ArmA 3
* + RHS USAF
* + TFAR
* 
* Call the script: _dummy = [] execvm "lea\loadoutSingleplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//Empty, nothing to do. unit myUav
//Empty, nothing to do. unit veh

/**
* Loadout for soldiers units
*/

if (!isNil "unit_0_0") then {
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

if (!isNil "unit_0_1") then {
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
unit_0_1 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_1 addWeapon "rhsusf_ANPVS_15";
unit_0_1 addWeapon "Binocular";
unit_0_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_1) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",1];
unit_0_1 addWeapon "rhs_weap_m240B";
removeBackpack unit_0_1;
unit_0_1 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_1 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_1 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_1);
clearMagazineCargoGlobal (backpackContainer unit_0_1);
clearWeaponCargoGlobal (backpackContainer unit_0_1);
(backpackContainer unit_0_1) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "SmokeShell";
unit_0_1 addItemToBackpack "rhs_mag_m67";
unit_0_1 addItemToBackpack "rhs_mag_m67";
unit_0_1 addItemToBackpack "rhs_mag_m67";
unit_0_1 addItemToBackpack "rhs_mag_m67";
unit_0_1 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_1);
clearMagazineCargoGlobal (vestContainer unit_0_1);
clearWeaponCargoGlobal (vestContainer unit_0_1);
(vestContainer unit_0_1) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
unit_0_1 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_1);
clearMagazineCargoGlobal (uniformContainer unit_0_1);
clearWeaponCargoGlobal (uniformContainer unit_0_1);
unit_0_1 addWeapon "tf_anprc152";
unit_0_1 selectWeapon (primaryWeapon unit_0_1);
};

if (!isNil "unit_0_2") then {
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
(backpackContainer unit_0_2) addmagazinecargoGlobal ["rhsusf_100Rnd_762x51",2];
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

if (!isNil "unit_0_3") then {
removeallweapons unit_0_3;
removeallassigneditems unit_0_3;
removeBackpack unit_0_3;
removeVest unit_0_3;
removeHeadgear unit_0_3;
removeUniform unit_0_3;
removeGoggles unit_0_3;

unit_0_3 addWeapon "ItemMap";
unit_0_3 addWeapon "ItemWatch";
unit_0_3 addWeapon "ItemCompass";
unit_0_3 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_3 addWeapon "rhsusf_ANPVS_15";
unit_0_3 addWeapon "Binocular";
unit_0_3 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_3 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_3;
unit_0_3 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_3 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_3 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_3) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",1];
unit_0_3 addWeapon "rhs_weap_fgm148";
removeBackpack unit_0_3;
unit_0_3 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_3);
clearMagazineCargoGlobal (backpackContainer unit_0_3);
clearWeaponCargoGlobal (backpackContainer unit_0_3);
(backpackContainer unit_0_3) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",2];
unit_0_3 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_3);
clearMagazineCargoGlobal (vestContainer unit_0_3);
clearWeaponCargoGlobal (vestContainer unit_0_3);
(vestContainer unit_0_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_3 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_3);
clearMagazineCargoGlobal (uniformContainer unit_0_3);
clearWeaponCargoGlobal (uniformContainer unit_0_3);
(uniformContainer unit_0_3) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_3 addWeapon "tf_anprc152";
unit_0_3 selectWeapon (primaryWeapon unit_0_3);
};

if (!isNil "unit_0_4") then {
removeallweapons unit_0_4;
removeallassigneditems unit_0_4;
removeBackpack unit_0_4;
removeVest unit_0_4;
removeHeadgear unit_0_4;
removeUniform unit_0_4;
removeGoggles unit_0_4;

unit_0_4 addWeapon "ItemMap";
unit_0_4 addWeapon "ItemWatch";
unit_0_4 addWeapon "ItemCompass";
unit_0_4 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_4 addWeapon "rhsusf_ANPVS_15";
unit_0_4 addWeapon "Binocular";
unit_0_4 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_4) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_4 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_4;
unit_0_4 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_4 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_4 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_4);
clearMagazineCargoGlobal (backpackContainer unit_0_4);
clearWeaponCargoGlobal (backpackContainer unit_0_4);
(backpackContainer unit_0_4) addmagazinecargoGlobal ["rhs_fgm148_magazine_AT",2];
unit_0_4 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_4);
clearMagazineCargoGlobal (vestContainer unit_0_4);
clearWeaponCargoGlobal (vestContainer unit_0_4);
(vestContainer unit_0_4) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_4 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_4);
clearMagazineCargoGlobal (uniformContainer unit_0_4);
clearWeaponCargoGlobal (uniformContainer unit_0_4);
(uniformContainer unit_0_4) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_4 addWeapon "tf_anprc152";
unit_0_4 selectWeapon (primaryWeapon unit_0_4);
};

if (!isNil "unit_0_5") then {
removeallweapons unit_0_5;
removeallassigneditems unit_0_5;
removeBackpack unit_0_5;
removeVest unit_0_5;
removeHeadgear unit_0_5;
removeUniform unit_0_5;
removeGoggles unit_0_5;

unit_0_5 addWeapon "ItemMap";
unit_0_5 addWeapon "ItemWatch";
unit_0_5 addWeapon "ItemCompass";
unit_0_5 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_5 addWeapon "rhsusf_ANPVS_15";
unit_0_5 addWeapon "Binocular";
unit_0_5 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_5 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_5;
unit_0_5 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_5 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_5 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_5);
clearMagazineCargoGlobal (backpackContainer unit_0_5);
clearWeaponCargoGlobal (backpackContainer unit_0_5);
unit_0_5 addItemToBackpack "SmokeShell";
unit_0_5 addItemToBackpack "SmokeShell";
unit_0_5 addItemToBackpack "SmokeShell";
unit_0_5 addItemToBackpack "SmokeShell";
unit_0_5 addItemToBackpack "rhs_mag_m67";
unit_0_5 addItemToBackpack "rhs_mag_m67";
unit_0_5 addItemToBackpack "rhs_mag_m67";
unit_0_5 addItemToBackpack "rhs_mag_m67";
unit_0_5 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_5);
clearMagazineCargoGlobal (vestContainer unit_0_5);
clearWeaponCargoGlobal (vestContainer unit_0_5);
(vestContainer unit_0_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_5 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_5);
clearMagazineCargoGlobal (uniformContainer unit_0_5);
clearWeaponCargoGlobal (uniformContainer unit_0_5);
(uniformContainer unit_0_5) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_5 addWeapon "tf_anprc152";
unit_0_5 selectWeapon (primaryWeapon unit_0_5);
};

if (!isNil "unit_0_6") then {
removeallweapons unit_0_6;
removeallassigneditems unit_0_6;
removeBackpack unit_0_6;
removeVest unit_0_6;
removeHeadgear unit_0_6;
removeUniform unit_0_6;
removeGoggles unit_0_6;

unit_0_6 addWeapon "ItemMap";
unit_0_6 addWeapon "ItemWatch";
unit_0_6 addWeapon "ItemCompass";
unit_0_6 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_6 addWeapon "rhsusf_ANPVS_15";
unit_0_6 addWeapon "Binocular";
unit_0_6 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_6 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_6;
unit_0_6 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_6 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_6 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_6);
clearMagazineCargoGlobal (backpackContainer unit_0_6);
clearWeaponCargoGlobal (backpackContainer unit_0_6);
unit_0_6 addItemToBackpack "SmokeShell";
unit_0_6 addItemToBackpack "SmokeShell";
unit_0_6 addItemToBackpack "SmokeShell";
unit_0_6 addItemToBackpack "SmokeShell";
unit_0_6 addItemToBackpack "rhs_mag_m67";
unit_0_6 addItemToBackpack "rhs_mag_m67";
unit_0_6 addItemToBackpack "rhs_mag_m67";
unit_0_6 addItemToBackpack "rhs_mag_m67";
unit_0_6 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_6);
clearMagazineCargoGlobal (vestContainer unit_0_6);
clearWeaponCargoGlobal (vestContainer unit_0_6);
(vestContainer unit_0_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_6 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_6);
clearMagazineCargoGlobal (uniformContainer unit_0_6);
clearWeaponCargoGlobal (uniformContainer unit_0_6);
(uniformContainer unit_0_6) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_6 addWeapon "tf_anprc152";
unit_0_6 selectWeapon (primaryWeapon unit_0_6);
};

if (!isNil "unit_0_7") then {
removeallweapons unit_0_7;
removeallassigneditems unit_0_7;
removeBackpack unit_0_7;
removeVest unit_0_7;
removeHeadgear unit_0_7;
removeUniform unit_0_7;
removeGoggles unit_0_7;

unit_0_7 addWeapon "ItemMap";
unit_0_7 addWeapon "ItemWatch";
unit_0_7 addWeapon "ItemCompass";
unit_0_7 addWeapon "rhsusf_ach_helmet_ocp";
unit_0_7 addWeapon "rhsusf_ANPVS_15";
unit_0_7 addWeapon "Binocular";
unit_0_7 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
unit_0_7 addWeapon "rhs_weap_m16a4_grip";
removeBackpack unit_0_7;
unit_0_7 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_7 addPrimaryWeaponItem "rhsusf_acc_ACOG3";
unit_0_7 addBackpack "B_Carryall_cbr";
clearItemCargoGlobal (backpackContainer unit_0_7);
clearMagazineCargoGlobal (backpackContainer unit_0_7);
clearWeaponCargoGlobal (backpackContainer unit_0_7);
unit_0_7 addItemToBackpack "SmokeShell";
unit_0_7 addItemToBackpack "SmokeShell";
unit_0_7 addItemToBackpack "SmokeShell";
unit_0_7 addItemToBackpack "SmokeShell";
unit_0_7 addItemToBackpack "rhs_mag_m67";
unit_0_7 addItemToBackpack "rhs_mag_m67";
unit_0_7 addItemToBackpack "rhs_mag_m67";
unit_0_7 addItemToBackpack "rhs_mag_m67";
unit_0_7 addVest "rhsusf_iotv_ocp";
clearItemCargoGlobal (vestContainer unit_0_7);
clearMagazineCargoGlobal (vestContainer unit_0_7);
clearWeaponCargoGlobal (vestContainer unit_0_7);
(vestContainer unit_0_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",12];
unit_0_7 forceAddUniform "rhs_uniform_cu_ocp";
clearItemCargoGlobal (uniformContainer unit_0_7);
clearMagazineCargoGlobal (uniformContainer unit_0_7);
clearWeaponCargoGlobal (uniformContainer unit_0_7);
(uniformContainer unit_0_7) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
unit_0_7 addWeapon "tf_anprc152";
unit_0_7 selectWeapon (primaryWeapon unit_0_7);
};

if (!isNil "unit_15_61") then {
removeallweapons unit_15_61;
removeallassigneditems unit_15_61;
removeBackpack unit_15_61;
removeVest unit_15_61;
removeHeadgear unit_15_61;
removeUniform unit_15_61;
removeGoggles unit_15_61;

if (count weapons unit_15_61 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_15_61) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_15_61 selectWeapon (_muzzles select 0);
  }
  else {
     unit_15_61 selectWeapon _type;
  };
};
};

if (!isNil "unit_23_78") then {
removeallweapons unit_23_78;
removeallassigneditems unit_23_78;
removeBackpack unit_23_78;
removeVest unit_23_78;
removeHeadgear unit_23_78;
removeUniform unit_23_78;
removeGoggles unit_23_78;

if (count weapons unit_23_78 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_23_78) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_23_78 selectWeapon (_muzzles select 0);
  }
  else {
     unit_23_78 selectWeapon _type;
  };
};
};

if (!isNil "veh2") then {
removeallweapons veh2;
removeallassigneditems veh2;
removeBackpack veh2;
removeVest veh2;
removeHeadgear veh2;
removeUniform veh2;
removeGoggles veh2;

if (count weapons veh2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons veh2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     veh2 selectWeapon (_muzzles select 0);
  }
  else {
     veh2 selectWeapon _type;
  };
};
};

