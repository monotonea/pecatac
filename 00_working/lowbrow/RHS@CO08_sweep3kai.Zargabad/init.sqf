if(not isServer) exitWith{};
// TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// ラジオと耳栓
ammobox additemCargoGlobal ["ACE_EarPlugs",10];
ammobox additemCargoGlobal ["itemradio",10];

//	UPSのマーカーを消す
	"ups1" setMarkerAlpha 0;
	"ups2" setMarkerAlpha 0;

// ミッションパラメーターの設定
//	ミッション開始時刻の選択
skiptime (paramsArray select 0);

//	AIのスキルを設定
{
	_x setSkill (paramsArray select 1);
	_x setskill ["aimingAccuracy",(paramsArray select 2)];
} forEach allUnits;

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };