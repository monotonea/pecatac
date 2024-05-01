//使い方：AIのinitに this execVM "AI_grenade.sqf"
if (!isServer) exitWith {};

_unit = _this;
_units = units group _unit;
while{true}do{
sleep 1;
	{
		_targets = _x targets [true,30]; //30m以内のターゲットを取得
		if((count _targets) > 0)then{
sleep 1;
		   _target = _targets select 0;
		   _edir = _x getDir _target;
		   _xdir = getDir _x;
		   if(_edir > 330)then{_edir = _edir + 30;_xdir = _xdir + 30;};//0度-360度対策
		   if(_xdir > 330)then{_edir = _edir + 30;_xdir = _xdir + 30;};
		   if(abs(round(_edir - _xdir)) < 30)then{ //敵への向きと兵士の向きが30度未満だったら
		      _x forceWeaponFire ["HandGrenadeMuzzle","HandGrenadeMuzzle"];
//		      _x globalChat "grenade!";
		   };
		};
	}foreach _units;
};