_group = _this;

{

	if(typeOf _x == "I_G_Soldier_F")then
	{
		removeallweapons _x;
		removeUniform _x;
		removeVest _x;
		sleep 0.1;
		_x forceAddUniform "U_BG_Guerilla3_1";
		_x addVest "rhs_6b13_6sh92";
		_x addMagazines ["rhs_mag_RGD5",2];
		_x addMagazines ["rhs_30Rnd_762x39mm",7];
		_x addweapon "rhs_weap_akm";
		_x addItem "ACE_fieldDressing";
	};
		if(typeOf _x == "I_G_Soldier_AR_F")then
	{
		removeallweapons _x;
		removeUniform _x;
		removeVest _x;
		sleep 0.1;
		_x forceAddUniform "U_BG_Guerilla3_2";
		_x addVest "rhs_6b13_6sh92";
		_x addMagazines ["rhs_100Rnd_762x54mmR",3];
		_x addweapon "rhs_weap_pkm";
	};
			if(typeOf _x == "I_G_Soldier_GL_F")then
	{
		removeallweapons _x;
		removeUniform _x;
		removeVest _x;
		sleep 0.1;
		_x forceAddUniform "U_BG_Guerilla3_2";
		_x addVest "rhs_6b13_6sh92";
		_x addMagazines ["rhs_30Rnd_762x39mm",6];
		_x addMagazines ["rhs_vog25",4];
		_x addweapon "rhs_weap_akm_gp25";
	};
		if(typeOf _x == "I_G_Soldier_LAT_F")then
	{
		removeallweapons _x;
		removeBackpack _x;
		removeUniform _x;
		removeVest _x;
		sleep 0.1;
		_x forceAddUniform "U_C_WorkerCoveralls";
		_x addBackPack "rhs_RPG";
		_x addVest "rhs_6sh92";
		_x addMagazines ["rhs_rpg7_OG7V_mag",3];
		_x addweapon "rhs_weap_rpg7";
		_x addMagazines ["rhs_30Rnd_762x39mm",6];
		_x addweapon "rhs_weap_akms";
		
	};
	if(typeOf _x == "I_G_Soldier_TL_F")then
	{
		removeallweapons _x;
		removeUniform _x;
		removeVest _x;
		sleep 0.1;
		_x forceAddUniform "U_C_HunterBody_grn";
		_x addVest "V_Rangemaster_belt";
		_x addMagazines ["rhs_30Rnd_762x39mm",6];
		_x addweapon "rhs_weap_akm";
	};
	
} forEach _group;