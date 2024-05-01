/**
* Generated by LEA for Arma 3
* Version: 2.0.22
* Sat Feb 07 12:42:56 JST 2015
* Mission file name: PVC09_Footprint_Means_Alt_1_2.altis
* Mission name: PVC09_Footprint_Means_Alt_1_2.altis
* Required mods:
* + ArmA 3
* + TFAR
* 
* Call the script: _dummy = [] execvm "lea\loadoutServer.sqf";
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
unit_0_0 addWeapon "H_HelmetB";
unit_0_0 addWeapon "NVGoggles_OPFOR";
unit_0_0 addWeapon "Binocular";
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag",1];
unit_0_0 addWeapon "arifle_MXM_Black_F";
removeBackpack unit_0_0;
unit_0_0 addPrimaryWeaponItem "acc_pointer_IR";
unit_0_0 addPrimaryWeaponItem "optic_DMS";
unit_0_0 addBackpack "B_Kitbag_mcamo";
clearItemCargoGlobal (backpackContainer unit_0_0);
clearMagazineCargoGlobal (backpackContainer unit_0_0);
clearWeaponCargoGlobal (backpackContainer unit_0_0);
unit_0_0 addVest "V_PlateCarrier3_rgr";
clearItemCargoGlobal (vestContainer unit_0_0);
clearMagazineCargoGlobal (vestContainer unit_0_0);
clearWeaponCargoGlobal (vestContainer unit_0_0);
(vestContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag",10];
unit_0_0 forceAddUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer unit_0_0);
clearMagazineCargoGlobal (uniformContainer unit_0_0);
clearWeaponCargoGlobal (uniformContainer unit_0_0);
unit_0_0 addItemToUniform "SmokeShell";
unit_0_0 addItemToUniform "SmokeShell";
unit_0_0 addItemToUniform "SmokeShell";
unit_0_0 addItemToUniform "SmokeShell";
unit_0_0 addItemToUniform "HandGrenade";
unit_0_0 addItemToUniform "HandGrenade";
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

if (count weapons unit_0_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_0_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_0_1 selectWeapon (_muzzles select 0);
  }
  else {
     unit_0_1 selectWeapon _type;
  };
};
};

if (!isNil "unit_0_2") then {
removeallweapons unit_0_2;
removeallassigneditems unit_0_2;
removeBackpack unit_0_2;
removeVest unit_0_2;
removeHeadgear unit_0_2;
removeUniform unit_0_2;
removeGoggles unit_0_2;

if (count weapons unit_0_2 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_0_2) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_0_2 selectWeapon (_muzzles select 0);
  }
  else {
     unit_0_2 selectWeapon _type;
  };
};
};

if (!isNil "unit_0_3") then {
removeallweapons unit_0_3;
removeallassigneditems unit_0_3;
removeBackpack unit_0_3;
removeVest unit_0_3;
removeHeadgear unit_0_3;
removeUniform unit_0_3;
removeGoggles unit_0_3;

if (count weapons unit_0_3 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_0_3) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_0_3 selectWeapon (_muzzles select 0);
  }
  else {
     unit_0_3 selectWeapon _type;
  };
};
};

if (!isNil "unit_1_4") then {
removeallweapons unit_1_4;
removeallassigneditems unit_1_4;
removeBackpack unit_1_4;
removeVest unit_1_4;
removeHeadgear unit_1_4;
removeUniform unit_1_4;
removeGoggles unit_1_4;

if (count weapons unit_1_4 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_1_4) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_1_4 selectWeapon (_muzzles select 0);
  }
  else {
     unit_1_4 selectWeapon _type;
  };
};
};

if (!isNil "unit_1_5") then {
removeallweapons unit_1_5;
removeallassigneditems unit_1_5;
removeBackpack unit_1_5;
removeVest unit_1_5;
removeHeadgear unit_1_5;
removeUniform unit_1_5;
removeGoggles unit_1_5;

if (count weapons unit_1_5 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_1_5) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_1_5 selectWeapon (_muzzles select 0);
  }
  else {
     unit_1_5 selectWeapon _type;
  };
};
};

if (!isNil "unit_1_6") then {
removeallweapons unit_1_6;
removeallassigneditems unit_1_6;
removeBackpack unit_1_6;
removeVest unit_1_6;
removeHeadgear unit_1_6;
removeUniform unit_1_6;
removeGoggles unit_1_6;

if (count weapons unit_1_6 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_1_6) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_1_6 selectWeapon (_muzzles select 0);
  }
  else {
     unit_1_6 selectWeapon _type;
  };
};
};

if (!isNil "unit_1_7") then {
removeallweapons unit_1_7;
removeallassigneditems unit_1_7;
removeBackpack unit_1_7;
removeVest unit_1_7;
removeHeadgear unit_1_7;
removeUniform unit_1_7;
removeGoggles unit_1_7;

if (count weapons unit_1_7 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_1_7) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_1_7 selectWeapon (_muzzles select 0);
  }
  else {
     unit_1_7 selectWeapon _type;
  };
};
};

