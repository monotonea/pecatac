if (!isServer) exitwith {};

_hAmmoBox = _this select 0;
clearitemcargoGlobal _hAmmoBox;
clearMagazinecargoGlobal _hAmmoBox;
clearWeaponcargoGlobal _hAmmoBox;
clearbackpackcargoGlobal  _hAmmoBox;

_hAmmoBox additemCargoGlobal ["FirstAidKit",20];
_hAmmoBox additemCargoGlobal ["Medikit",5];

_hAmmoBox additemCargoGlobal ["ACE_Clacker",5];
_hAmmoBox addMagazineCargoGlobal ["satchelCharge_Remote_Mag",5];
_hAmmoBox addMagazineCargoGlobal ["rhs_mag_rgd5",25];

_hAmmoBox addItemCargoGlobal ["NVGoggles_INDEP",12];
_hAmmoBox addbackpackcargoGlobal ["rhs_sidor",10];

