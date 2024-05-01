if(not isServer) exitWith{};
// TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
//	なんちゃってレベル
{
	if(side _x == east) then
	{
		_x removeweapon "NVGoggles_OPFOR" ;
		removeHeadgear _x;
		removeUniform _x;
		_x forceAddUniform "rhs_uniform_mflora_patchless";
		_x setFace format["PersianHead_A3_0%1" ,round(random 2)];
			_array = ["H_Booniehat_dirty", "rhs_6b27m_green","H_Shemag_olive","H_Shemag_olive"];
			_random = _array select floor random count _array;
		_x addHeadgear _random;
	};
} foreach (allUnits);

//	人質の場所をランダム化
_random = floor(random 4);

IF (_random == 0) then{hostage Setpos [5735.01,5683.16,3.5]};	//	mHpos0
IF (_random == 1) then{hostage Setpos [5820.83,5619.99,6.2]};	//	mHpos1
IF (_random == 2) then{hostage SetPos [6140.1,5526.02,8.5]};	//	mHpos2
IF (_random == 3) then{hostage SetPos [6191.62,5694.44,4]};	//	mHpos3

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
