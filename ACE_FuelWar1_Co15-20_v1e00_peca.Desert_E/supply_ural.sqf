/**
* Generated by LEA for Arma 3
* Version: 2.0.24
* Mon Jan 08 19:18:22 JST 2018
* 
* Call the script: _dummy = this execvm "crate.sqf";
* 
*/

if (isServer) then {
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;


  _this addmagazinecargoGlobal ["CUP_30Rnd_545x39_AK_M",30];
  _this addmagazinecargoGlobal ["rhs_mag_rdg2_white",50];
  _this addmagazinecargoGlobal ["CUP_HandGrenade_RGD5",30];
  _this addmagazinecargoGlobal ["CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M",30];
  _this addmagazinecargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",20];
  _this addmagazinecargoGlobal ["CUP_1Rnd_HE_GP25_M",40];
  _this addmagazinecargoGlobal ["CUP_IlumFlareWhite_GP25_M",20];
  _this addmagazinecargoGlobal ["CUP_IlumFlareRed_GP25_M",20];
  _this addmagazinecargoGlobal ["CUP_1Rnd_SMOKE_GP25_M",40];


  _this additemcargoGlobal ["ACE_EarPlugs",5];
  _this additemcargoGlobal ["tf_fadak",3];
};


