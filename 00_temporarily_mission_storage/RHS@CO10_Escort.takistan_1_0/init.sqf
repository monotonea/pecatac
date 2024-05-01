if(not isServer) exitWith{};

// TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;


//	ACE耳栓・ラジオ
ammobox additemCargoGlobal ["ACE_DefusalKit",12];
ammobox additemCargoGlobal ["ACRE_PRC148",12];
ammobox additemCargoGlobal ["ACE_Clacker",12];

bmp additemCargoGlobal ["ACE_EarPlugs",12];
ZU additemCargoGlobal ["ACE_EarPlugs",12];
btr additemCargoGlobal ["ACE_EarPlugs",12];

// 車両のくじ引き
_random = selectRandom [0,1,2];
	if (_random == 0) then 
	{
		deleteVehicle bmp;
		deleteVehicle btr;
	};
	if (_random == 1) then 
	{
		deleteVehicle btr;
		deleteVehicle ZU;
	};
	if (_random == 2) then 
	{
		deleteVehicle ZU;
		deleteVehicle bmp;
	};

// トラックのデコレーション
_cargo = "B_CargoNet_01_ammo_F" createVehicle position truck2; 
_cargo attachTo [truck2, [0, -2.5, 0.6]]; 
_cargo setVectorDir [0,0,1] ;

// 開始時にフェードイン
titleText ["", "BLACK FADED", 0];
titleText ["CONVOY start within 10 minutes!", "BLACK IN", 8];

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };
