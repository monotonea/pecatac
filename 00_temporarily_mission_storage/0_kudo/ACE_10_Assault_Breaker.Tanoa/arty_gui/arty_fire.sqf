_mag = _this select 5;
_mag1 = ARTY_magazine select 0;
_mag2 = ARTY_magazine select 1;

_AMMO1_count	= missionnamespace getvariable "Arty_Ammo1";
_AMMO2_count	= missionnamespace getvariable "Arty_Ammo2";

if(_mag == _mag1)then{
	_AMMO1_count = _AMMO1_count - 1;
	missionnamespace setvariable ["Arty_Ammo1",_AMMO1_count];
	publicvariable "Arty_Ammo1";
};

if(_mag == _mag2)then{
	_AMMO2_count = _AMMO2_count - 1;
	missionnamespace setvariable ["Arty_Ammo2",_AMMO2_count];
	publicvariable "Arty_Ammo2";
};