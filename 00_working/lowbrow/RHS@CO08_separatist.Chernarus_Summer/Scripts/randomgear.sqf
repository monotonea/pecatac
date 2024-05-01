 // 東欧ゲリラスクリプト

 if(not isServer) exitWith{};
{
	if(faction _x == "OPF_G_F") then
	{
	//	被り物
		removeHeadgear _x;
		_arrayheadgear = ["H_Bandanna_cbr","H_Booniehat_dirty","rhsgref_helmet_M1_painted_alt01","rhs_beanie",""];
		_randomheadgear = _arrayheadgear select floor random count _arrayheadgear;
		_x addHeadgear _randomheadgear;
		
	//	服
		removeUniform _x;
		_arrayUniform = ["rhsgref_uniform_woodland","rhsgref_uniform_alpenflage","rhsgref_uniform_woodland_olive"];
		_randomUniform = _arrayUniform select floor random count _arrayUniform;
		_x adduniform _randomUniform;
		for "_i" from 1 to 2 do {_x addItemToUniform "FirstAidKit";};
		for "_i" from 1 to 2 do {_x addItemToUniform "rhs_mag_rgd5";};
	};
} foreach (allUnits);