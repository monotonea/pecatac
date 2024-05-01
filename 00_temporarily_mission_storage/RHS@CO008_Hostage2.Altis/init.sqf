if(not isServer) exitWith{};
// TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
//	人質の場所をランダム化
_random = floor(random 4);

IF (_random == 0) then{hostage Setpos [9610.37,15167.8,1.5]}; hostage setdir 320;	//	mHpos0
IF (_random == 1) then{hostage Setpos [9246.32,15820.2,5.5]}; hostage setdir 230;	//	mHpos1
IF (_random == 2) then{hostage SetPos [10265.5,15898.5,3.3]}; hostage setdir 330;	//	mHpos2
IF (_random == 3) then{hostage SetPos [11023.7,14838.2,1.5]}; hostage setdir 90;	//	mHpos3

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