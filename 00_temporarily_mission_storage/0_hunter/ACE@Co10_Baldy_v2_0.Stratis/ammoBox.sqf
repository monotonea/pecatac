if (!isServer) exitwith {};

private _tgt = _this select 0;
clearBackpackCargoGlobal _tgt;
clearMagazineCargoGlobal _tgt;
clearWeaponCargoGlobal _tgt;
clearItemCargoGlobal _tgt;

_tgt addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",10];
_tgt addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag",50];
_tgt addMagazineCargoGlobal ["9Rnd_45ACP_Mag",30];
_tgt addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",5];
_tgt addMagazineCargoGlobal ["rhs_mag_m67",30];
_tgt addMagazineCargoGlobal ["rhs_mag_an_m8hc",30];
