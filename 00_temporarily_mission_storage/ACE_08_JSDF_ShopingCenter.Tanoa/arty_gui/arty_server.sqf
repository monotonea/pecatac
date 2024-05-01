_fire = "";
	while{true}do{
		_fire = missionnamespace getvariable "Arty_Fire";
		if((_fire select 0) > 0)then{
			[_fire select 0,_fire select 1,_fire select 2,_fire select 3,_fire select 4] execVM "arty_gui\fire_arty.sqf";
			missionnamespace setvariable ["Arty_Fire",[0]];
		};
		sleep 0.1;
	};