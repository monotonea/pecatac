if (!isServer) exitwith {};

_hAmmoBox = _this select 0;
clearitemcargoGlobal _hAmmoBox;
clearMagazinecargoGlobal _hAmmoBox;
clearWeaponcargoGlobal _hAmmoBox;
clearbackpackcargoGlobal  _hAmmoBox;

_hAmmoBox additemCargoGlobal ["O_UavTerminal",1];
_hAmmoBox addbackpackcargoGlobal  ["O_UAV_01_backpack_F",1];
_hAmmoBox addMagazineCargoGlobal ["DemoCharge_Remote_Mag",2];

_hAmmoBox additemCargoGlobal ["ACE_UAVBattery",2];

_hAmmoBox addItemCargoGlobal ["NVGoggles_INDEP",12];
_hAmmoBox addbackpackcargoGlobal ["rhs_sidor",12];

