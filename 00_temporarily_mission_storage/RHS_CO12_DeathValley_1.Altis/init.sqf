if(isServer)then{
	{
		_x setSkill 1;
		if(side _x == east) then{
			_x setSkill ["aimingAccuracy", 0.2]
		};
	} forEach allUnits; 
}