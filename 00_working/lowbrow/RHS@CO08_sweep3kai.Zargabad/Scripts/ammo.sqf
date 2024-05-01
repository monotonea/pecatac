if (!isServer) exitwith {};

_hAmmoBox = _this select 0;
clearitemcargoGlobal _hAmmoBox;
clearMagazinecargoGlobal _hAmmoBox;
clearWeaponcargoGlobal _hAmmoBox;

_hAmmoBox addWeaponCargoGlobal ["rhs_weap_M136",1];
_hAmmoBox addMagazineCargoGlobal ["rhs_m136_mag",1];

_hAmmoBox addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",30];
_hAmmoBox addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30];
_hAmmoBox addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",5];
_hAmmoBox addMagazineCargoGlobal ["DemoCharge_Remote_Mag",2];

_hAmmoBox addMagazineCargoGlobal ["HandGrenade",20];
_hAmmoBox addMagazineCargoGlobal ["SmokeShell",20];

_hAmmoBox addItemCargoGlobal ["rhsusf_acc_ACOG2",12];
_hAmmoBox addItemCargoGlobal ["rhsusf_acc_anpeq15_light",12];

_hAmmoBox addBackpackCargoGlobal ["B_TacticalPack_oli",8];

_hAmmoBox additemCargoGlobal ["AGM_Bandage",20];
_hAmmoBox additemCargoGlobal ["AGM_Epipen",20];
_hAmmoBox additemCargoGlobal ["AGM_Morphine",20];
_hAmmoBox additemCargoGlobal ["AGM_Bloodbag",20];



