// [_trg, _side(, _onDetected(, _timeout(, _thres)))] execVM "EnemyDetector.sqf";
// _trg         敵をlistするトリガー
// _side        敵が認識する陣営の配列
// _onDetected  敵が認識したときに実行するコード
// _timeout     タイムアウト秒
// _thres       knowsAboutのしきい値
// 
// 0   完全に認識していない
// 1.5 敵がどこかにいる(警戒状態)
// 3.5 敵がいる(交戦状態)
// 4   完全に戦闘状態

if(not isServer) exitWith{};

_trg = _this select 0;
_side = _this select 1;
_onDetected = {};
if(count _this > 2) then{
	_onDetected = _this select 2;
};
_timeout = 10;
if(count _this > 3) then{
	_timeout = _this select 3;
};
_thres = 2;
if(count _this > 4) then{
	_thres = _this select 4;
};


_break = false;
_count = 0;

while{not _break} do{
	_max = 0;
	_detect = false;
	{
		_unit = _x;
		_targets = _unit nearTargets 500;
		_detect = _detect or (({
			//if(((_x select 2) in _side) and (_max < (_unit knowsAbout (_x select 4)))) then{
			//	_max = (_unit knowsAbout (_x select 4));
			//};
			((_x select 2) in _side) and (_unit knowsAbout (_x select 4) >= _thres)
		} count _targets) > 0);
	} forEach list _trg;
	
	if(_detect) then{
		_count = _count + 1;
	}else{
		_count = 0;
	};
	
	//player sideChat format ["%1 %2", _max, _count];
	
	if(_count >= _timeout) then{
		_break = true;
	};
	sleep 1;
};

[] spawn _onDetected;