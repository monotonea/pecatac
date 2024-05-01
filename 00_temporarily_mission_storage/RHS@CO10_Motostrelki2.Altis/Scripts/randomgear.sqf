 // 中東ゲリラスクリプト

 if(not isServer) exitWith{};
{
	if(faction _x == "IND_G_F") then
	{
	//	被り物
		removeHeadgear _x;
		_arrayheadgear = ["H_Bandanna_cbr","H_Booniehat_dirty","rhsgref_helmet_pasgt_woodland","H_Cap_grn_BI",""];
		_randomheadgear = _arrayheadgear select floor random count _arrayheadgear;
		_x addHeadgear _randomheadgear;
		
	//	服
		removeUniform _x;
		_arrayUniform = ["rhsgref_uniform_flecktarn","rhsgref_uniform_alpenflage","U_I_C_Soldier_Para_2_F"];
		_randomUniform = _arrayUniform select floor random count _arrayUniform;
		_x adduniform _randomUniform;
		for "_i" from 1 to 2 do {_x addItemToUniform "FirstAidKit";};
		for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_rgd5";};
		
	// ペルシャ顔
		_x setFace format[
			"PersianHead_A3_0%1" ,selectRandom [1,2,3]
		];

	// ペルシャ語
		_x setSpeaker format[
			"Male0%1PER" ,selectRandom [1,2,3]
		];
	};
} foreach (allUnits);