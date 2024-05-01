_unit = _this select 0;

//bFlareOn = false;
sleep (random 7);

_mag = "rhs_vg40op_white";

while{alive _unit} do{
	//waitUntil{(not alive _unit) or (not isNull (_unit findNearestEnemy _unit))};
	sleep 7;
	if(alive _unit) then{
		//_enemy = _unit findNearestEnemy _unit;
		//if(_unit distance _enemy < 300) then{
			//bFlareOn = true;
hint "Add";
			_unit addMagazine _mag;
			_unit fire ["GP25Muzzle", "GP25Muzzle", _mag];
			sleep 19;
			//bFlareOn = false;
		//};
	};
};