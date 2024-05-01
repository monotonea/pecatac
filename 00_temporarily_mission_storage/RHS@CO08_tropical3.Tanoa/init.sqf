if(not isServer) exitWith{};


//	TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
 
//	ACE耳栓等
ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["ACE_SpraypaintBlue",10];
ammobox additemCargoGlobal ["ACE_DAGR",2];

/*	
	乗車中はNVGをアサインできないのでミッション開始前にインベントリからスロットに移す
	一般兵		rhsusf_ANPVS_14
	特殊部隊		rhsusf_ANPVS_15
	ロシア軍		rhs_1PN138
*/	

{
	if(side _x == west) then
	{
		_x assignItem "rhsusf_ANPVS_15"
	};
} foreach (allUnits);

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };