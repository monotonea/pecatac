if (!isServer) exitwith {};

private _tgt = _this select 0;
clearBackpackCargoGlobal _tgt;
clearMagazineCargoGlobal _tgt;
clearWeaponCargoGlobal _tgt;
clearItemCargoGlobal _tgt;

_tgt addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",100];
_tgt addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ",30];
_tgt addMagazineCargoGlobal ["rhs_mag_m67",30];
_tgt addMagazineCargoGlobal ["rhs_mag_an_m8hc",30];

