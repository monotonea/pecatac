//    視程を設定
setviewdistance 3000;
setObjectViewDistance 2500;

// これ以降はサーバー側だけで実行
if(not isServer) exitWith{};

// 砲を飛行機にくっつける
execVM "Scripts\Gunship.sqf";

//	TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// OPFORユニット全員に耳栓とスコップを配る
{
	if(side _x == east) then
	{
		_x additem "ACE_EarPlugs";
		_x additem "ACE_MicroDAGR";
		_x additem "ACRE_PRC152";
	};
} foreach (allUnits);

//    プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };