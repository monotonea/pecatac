_player = _this;
_time = 0;
missionnamespace setvariable ["Arty_ETA",[0]];
while{alive _player}do{
	_time = (missionnamespace getvariable "Arty_ETA") select 0;
	if(_time > 0)then{
		//_arty = (missionnamespace getvariable "Arty_ETA") select 1;
		//_arty sidechat format ["ETA %1 sec.",_time];
		_time = floor _time;
		_name = groupId Mortars;
		(Leader Mortars) SideChat Format["こちら%1、了解。　砲撃を開始する。",_name];
		sleep 9;
		(Leader Mortars) SideChat Format["弾着まで、あと %1 秒。",_time];
		_time = 0;
		missionnamespace setvariable ["Arty_ETA",[_time]];
	};
	sleep 0.1;
};