/*
Arsenal whitelist by trico
_nul = [this] execVM "arsenal.sqf";
*/
if (!isServer) exitWith {};

_box = _this select 0;

_aWeapons = [
/* Rifle */
"rhs_weap_ak103",
"rhs_weap_ak103_npz",
"rhs_weap_ak105",
"rhs_weap_ak105_npz",
"rhs_weap_ak74m",
"rhs_weap_ak74m_npz",
"rhs_weap_ak74m_2mag",
"rhs_weap_ak74m_2mag_npz",
"rhs_weap_ak74m_camo",
"rhs_weap_ak74m_camo_npz",
"rhs_weap_ak74m_desert",
"rhs_weap_ak74m_desert_npz",
"rhs_weap_ak74m_zenitco01_b33",
"rhs_weap_ak74m_zenitco01",
"rhs_weap_ak74mr",

"rhs_weap_hk416d145",
"rhs_weap_hk416d10",
"rhs_weap_m4_mstock",
"rhs_weap_m4a1_d",
"rhs_weap_m16a4_carryhandle_pmag",
"rhsusf_weap_MP7A2",
"arifle_MX_Black_F",

/* MG */
"rhs_weap_m249_pip",

/* Pistol */
"rhsusf_weap_glock17g4",
"rhsusf_weap_m1911a1",
"rhsusf_weap_m9",
"rhs_weap_makarov_pm",
"hgun_ACPC2_F",
"hgun_Pistol_heavy_01_F",

/* Launcher */
"rhs_weap_m72a7"
];

_aMags = [
/* Magazine */
"9Rnd_45ACP_Mag",
"11Rnd_45ACP_Mag",
"rhsusf_mag_17Rnd_9x19_JHP",
"rhsusf_mag_15Rnd_9x19_JHP",
"rhsusf_mag_7x45acp_MHP",
"rhs_mag_9x18_8_57N181S",
"rhs_30Rnd_762x39mm",
"rhs_30Rnd_545x39_AK",
"rhs_mag_30Rnd_556x45_Mk318_Stanag",
"rhs_200rnd_556x45_M_SAW",
"rhsusf_mag_40Rnd_46x30_FMJ",
"30Rnd_65x39_caseless_mag",

/* Grenade */
"rhs_mag_m67",
"rhs_mag_an_m8hc",
"rhs_mag_m18_green",
"rhs_mag_m18_red",

/* Explosives */
"DemoCharge_Remote_Mag",
"SatchelCharge_Remote_Mag"
];

_aItems = [
"ACE_fieldDressing",
"ACE_bloodIV_250",
"ACE_morphine",
"ACE_epinephrine",

"ACE_EarPlugs",
"ACE_microDAGR",
"ACE_EntrenchingTool",
"ACE_Sparebarrel",
"ACE_Clacker",

"Binocular",

"ItemMap",
"ItemCompass",
"ItemWatch",

/* Weapon acc */
"optic_Aco",
"rhsusf_acc_M952V",
"rhs_acc_2dpZenit",
"rhs_acc_pkas",
"rhs_acc_ekp1",
"rhs_acc_1p63",
"rhs_acc_rakursPM",
"rhsusf_acc_EOTECH",
"rhsusf_acc_eotech_552",
"rhsusf_acc_eotech_552_d",
"rhsusf_acc_compm4",
"rhsusf_acc_eotech_xps3",

/* Muzzle */
"rhs_acc_dtk",
"rhs_acc_uuk",
"rhs_acc_ak5",
"rhs_acc_dtk1",
"rhs_acc_dtk2",

/* Grip */
"rhsusf_acc_grip1",
"rhsusf_acc_grip2",
"rhsusf_acc_grip3",
"rhs_acc_grip_ffg2"
];

_aBacks = [
"rhsusf_falconii_coy"
];

_aClothes = [
/* Vest */
"rhsusf_spc_patchless_radio",

/* Uniform */
"U_BG_Guerilla2_1",

/* Head */
"H_Cap_red",
"H_Cap_blu",
"H_Cap_oli",
"H_Cap_headphones",
"H_Cap_tan",
"H_Cap_blk",
"H_Cap_blk_CMMG",
"H_Cap_brn_SPECOPS",
"H_Cap_tan_specops_US",
"H_Cap_khaki_specops_UK",
"H_Cap_grn",
"H_Cap_grn_BI",
"H_Cap_blk_Raven",
"H_Cap_blk_ION",
"H_Cap_oli_hs",
"H_Cap_press",
"H_Cap_usblack",
"H_Cap_surfer",
"H_Cap_police",
"H_Bandanna_khk",
"H_Bandanna_khk_hs",
"H_Bandanna_cbr",
"H_Bandanna_sgg",
"H_Bandanna_sand",
"H_Bandanna_gry",
"H_Bandanna_blu",
"H_Bandanna_camo",
"H_Bandanna_mcamo",
"H_Beret_blk",
"H_Watchcap_blk",
"H_Watchcap_cbr",
"H_Watchcap_khk",
"H_Watchcap_camo",
"H_Watchcap_sgg",
"H_Booniehat_khk",
"H_Booniehat_oli",
"H_Booniehat_indp",
"H_Booniehat_mcamo",
"H_Booniehat_grn",
"H_Booniehat_tan",
"H_Booniehat_dirty",
"H_Booniehat_dgtl",
"H_Booniehat_khk_hs",

/* Glasses */
"G_Bandanna_beast",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Combat",
"G_Lowprofile",
"G_Tactical_Black",
"G_Tactical_Clear",
"G_Aviator",
"G_Spectacles",
"G_Spectacles_Tinted",
"G_Squares",
"G_Squares_Tinted",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Sport_Blackred",
"G_Sport_BlackWhite",
"G_Sport_Blackyellow",
"G_Sport_Checkered",
"G_Sport_Greenblack",
"G_Sport_Red",
"G_Lady_Blue",
"G_Lady_Dark",
"G_Lady_Mirror",
"G_Lady_Red",
"rhs_googles_clear",
"rhs_googles_black"
];

if (isClass (configFile >> "CfgPatches" >> "acre_api")) then {
	_aItems = _aItems + ["ACRE_PRC343","ACRE_PRC148"];
} else {
    if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	_aItems = _aItems + ["TFAR_anprc148jem"];
    };
};

[_box,_aWeapons,true] call BIS_fnc_addVirtualWeaponCargo;
[_box,_aMags,true] call BIS_fnc_addVirtualMagazineCargo;
[_box,(_aItems + _aClothes),true] call BIS_fnc_addVirtualItemCargo;
[_box,_aBacks,true] call BIS_fnc_addVirtualBackpackCargo;

["AmmoboxInit",_box] call BIS_FNC_Arsenal;
_box setVariable ["bis_fnc_arsenal_condition",{true},true];
