_count = _this select 0;
_EW = parseNumber(_this select 1);
_SN = parseNumber(_this select 2);
_type = (_this select 3) - 1;
_wait = _this select 4;

_mag = ARTY_magazine select _type;

_arty_count = count ARTY_TEAM;
_shooter = 0;
_shoot = 0;
_shoot_1st = 0;
for "_x" from 1 to _count do{
	(ARTY_TEAM select _shooter) addmagazine _mag;
	_targetpos = [ _EW * 100 * ARTY_X + (random ARTY_POS_RANDOM) + ARTY_XA * 100 - ARTY_POS_RANDOM,_SN * 100 * ARTY_Y + (random ARTY_POS_RANDOM) + ARTY_YA * 100 - ARTY_POS_RANDOM,0];
	_arty = (ARTY_TEAM select _shooter);
	if(_targetpos inRangeOfArtillery [[_arty], _mag])then{
		_arty doArtilleryFire [_targetpos, _mag, 1];
		_shooter = _shooter + 1;
		if(_shooter >= _arty_count)then{_shooter = 0};
		_shoot = 1;
		if(_shoot_1st == 0)then{
			//_arty sidechat format ["ETA %1 sec.",_arty getArtilleryETA [_targetpos,_mag]];
			missionnamespace setvariable ["Arty_ETA",[_arty getArtilleryETA [_targetpos,_mag],_arty]];
			publicvariable "Arty_ETA";
		};
		_shoot_1st = _shoot_1st + 1;
		sleep 1;
	};
};

if(_shoot == 1)then{
	sleep _wait;
}else{
	(ARTY_TEAM select 0) sidechat "out of range";
};

missionnamespace setvariable ["Arty_Reload",2];
publicvariable "Arty_Reload";
