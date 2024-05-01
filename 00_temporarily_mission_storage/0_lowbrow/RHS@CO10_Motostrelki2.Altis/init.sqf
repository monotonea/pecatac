if(not isServer) exitWith{};

//	TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

//	敵の装備ランダム化
execVM "Scripts\randomgear.sqf";

//	ACE耳栓・ラジオ
ammobox additemCargoGlobal ["ACE_EarPlugs",20];
ammobox additemCargoGlobal ["ACRE_PRC152",20];
ammobox additemCargoGlobal ["ACE_Clacker",20];
ammobox additemCargoGlobal ["ACE_M84",20];

// ACE医薬品
medbox additemCargoGlobal ["ACE_tourniquet",20];

medbox additemCargoGlobal ["ACE_fieldDressing",100];
medbox additemCargoGlobal ["ACE_elasticBandage",50];
medbox additemCargoGlobal ["ACE_packingBandage",50];
medbox additemCargoGlobal ["ACE_quikclot",50];

medbox additemCargoGlobal ["ACE_salineIV_500",20];
medbox additemCargoGlobal ["ACE_salineIV_250",20];

medbox additemCargoGlobal ["ACE_epinephrine",30];
medbox additemCargoGlobal ["ACE_morphine",30];
medbox additemCargoGlobal ["ACE_atropine",30];

medbox additemCargoGlobal ["ACE_surgicalKit",12];
medbox additemCargoGlobal ["ACE_personalAidKit",12];

// 車両のくじ引き
_random = selectRandom [0,1,2];
if (_random == 0) then 
{
	deleteVehicle bmp;
	deleteVehicle btr1;
};
if (_random == 1) then 
{
	deleteVehicle bmp;
	deleteVehicle btr2;
};
if (_random == 2) then 
{
	deleteVehicle btr1;
	deleteVehicle btr2;
};
	
//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };
