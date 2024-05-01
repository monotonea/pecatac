if (!isServer) exitwith {};

_hAmmoBox = _this select 0;
clearitemcargoGlobal _hAmmoBox;
clearMagazinecargoGlobal _hAmmoBox;
clearWeaponcargoGlobal _hAmmoBox;

_hAmmoBox addWeaponCargoGlobal ["arifle_Mk20c_F",5];
_hAmmoBox addWeaponCargoGlobal ["hgun_ACPC2_F",5];
_hAmmoBox addWeaponCargoGlobal ["SMG_01_F",5];

_hAmmoBox addMagazineCargoGlobal ["30Rnd_556x45_stanag",60];
_hAmmoBox addMagazineCargoGlobal ["30Rnd_556x45_stanag_Tracer_Yellow",60];
_hAmmoBox addMagazineCargoGlobal ["9Rnd_45ACP_mag", 30];
_hAmmoBox addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 30];


_hAmmoBox addMagazineCargoGlobal ["HandGrenade",20];
_hAmmoBox addMagazineCargoGlobal ["SmokeShell",20];

_hAmmoBox addItemCargoGlobal ["optic_ACO",20];
_hAmmoBox addItemCargoGlobal ["optic_Holosight",20];
_hAmmoBox addItemcargoGlobal ["optic_Holosight_smg",12];
_hAmmoBox addItemcargoGlobal ["optic_ACO_grn",12];
_hAmmoBox addItemcargoGlobal ["optic_aco_smg",12];
_hAmmoBox addItemCargoGlobal ["acc_pointer_IR",20];
_hAmmoBox addItemCargoGlobal ["acc_flashlight",20];
_hAmmoBox addItemCargoGlobal ["muzzle_snds_acp",20];
_hAmmoBox addItemCargoGlobal ["muzzle_snds_M",20];