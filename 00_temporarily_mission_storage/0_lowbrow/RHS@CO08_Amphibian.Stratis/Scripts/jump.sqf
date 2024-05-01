if (!isServer) exitWith {};

_unit = _this select 0;
_group = _this select 1;

// 現在のウェイポイントで一旦止める
_unit lockWP true;

// 高度を下げる
_unit flyInHeight 5;

// 高度と速度が指定の数値以下になるまで待つ
// 地形や条件によっては高度が20m以下に下がらないので、select 2 < 20を20～35mくらいの範囲で調整する
waitUntil { ((getPosASL _unit) select 2 < 5) && (speed _unit < 10) };
//	上の行で設定した高度・速度になったらヘリの動きを止める
//	_unit stop true;

sleep 1;
	{
		unassignvehicle _x;
		_x action ["EJECT", _unit];
		sleep 2
	} foreach units _group;

// 全員が降りるまで待つ
waitUntil { {alive _x} count (crew _unit) - (units group _unit) == 0 };
sleep 3;

// ウェイポイントのロックとstopを解除して次のウェイポイントへ移動
_unit stop false;
_unit lockWP false;
_unit flyInHeight 30;

