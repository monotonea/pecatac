if(not isServer) exitWith{};

// TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;


//	ACE耳栓・ラジオ
{
	if(side _x == west) then
	{
		_x addItemToUniform "ACE_EarPlugs" ;
	};
} foreach allUnits;

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };
