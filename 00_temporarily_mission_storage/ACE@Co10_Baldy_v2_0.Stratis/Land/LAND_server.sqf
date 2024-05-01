//////////////////////////////////////////////////////////////////
//	LAND_server.sqf		Type90 worte
//	ヘリの降着と基地への帰還をさせるスクリプトファイル	サーバ側処理
//////////////////////////////////////////////////////////////////


//	引数	[ ヘリ名, 着陸地点のヘリパッド名, 帰還する地点のヘリパッド名 ]
_unit		= _this select 0;
_posLZ		= getPos (_this select 1);
_posBase	= getPos (_this select 2);
																																			//[West,"HQ"] sideChat "server:start";
//	士気値を一応MAXにしておく
_unit allowFleeing 0;

//	LZまで移動
_unit land "NONE";														//	着陸のキャンセル(一応2度目の呼び出し用)
_unit doMove _posLZ;
_unit flyInHeight 100;
_unit setBehaviour	"CARELESS";											//	ケアレスだと色々無視するけど射撃はする
_unit setSpeedMode	"NORMAL";
																																			//[West,"HQ"] sideChat "server:Moving to LZ";
//	LZまでスクリプトをストップ
waitUntil { _unit distance _posLZ < 300 };
																																			//[West,"HQ"] sideChat "server:Start Landing LZ";
//	LZに着陸させる
while { !LAND_bAction } do {
	_unit land "GET IN";	sleep 0.5;
																																			//[West,"HQ"] sideChat "server:Landing LZ";
};

//	垂直上昇させる
_unit land "NONE";
_unit doMove getPos _unit;
_unit setSpeedMode	"LIMITED";

//	高度20になるまでスクリプトをストップ
waitUntil { (getPos _unit) select 2 > 20 };
																																			//[West,"HQ"] sideChat "server:Up to 20";
//	基地へ帰還
_unit doMove _posBase;
_unit setSpeedMode	"NORMAL";
																																			//[West,"HQ"] sideChat "server:Go to base";
//	基地までスクリプトをストップ
waitUntil { _unit distance _posBase < 300 };

_unit setSpeedMode	"LIMITED";
																																			//[West,"HQ"] sideChat "server:Start Landing Base";
//	着陸が成功してエンジンが切れるまで5秒おきにLandを実行する
while { isEngineOn _unit } do {
	_unit land "LAND";	sleep 5;
																																			//[West,"HQ"] sideChat "server:Landing Base";
};
																																			//[West,"HQ"] sideChat "server:EOF";
