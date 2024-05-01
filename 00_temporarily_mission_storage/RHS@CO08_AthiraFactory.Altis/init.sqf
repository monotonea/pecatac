//	VDの設定
	setViewDistance 2500;
	setObjectViewDistance 2000;

if(not isServer) exitWith{};
 // TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

ammobox additemCargoGlobal ["ACE_EarPlugs",12];
ammobox additemCargoGlobal ["itemradio",12];

//	UPSのマーカーを消す
	"ups1" setMarkerAlpha 0;
	"ups2" setMarkerAlpha 0;

//		ミッションパラメーターの設定
//		乗り物の選択
if ((paramsArray select 0) == 1) then
{
		deleteVehicle bmp1;
		deleteVehicle bmd1r;
};
if ((paramsArray select 0) == 2) then
{
		deleteVehicle btr;
		deleteVehicle bmd1r;
};
if ((paramsArray select 0) == 3) then
{
		deleteVehicle btr;
		deleteVehicle bmp1;
};


//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };