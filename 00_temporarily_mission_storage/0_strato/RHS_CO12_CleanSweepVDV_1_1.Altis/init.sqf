if(isServer)then{
	{
		_x setSkill 1;
		_x setSkill ["aimingAccuracy", 0.3];
	} forEach allUnits; 

	oIntels = [oIntel_2, oIntel_3, oIntel_4];
	oIntel = oIntels select (floor (random (count oIntels)));
	{
		if(_x != oIntel) then{ deleteVehicle _x; };
	} forEach oIntels;
	publicVariable "oIntel";

	oAmmos = [oAmmo_1, oAmmo_2];
	oAmmo = oAmmos select (floor (random (count oAmmos)));
	{
		if(_x != oAmmo) then{ deleteVehicle _x; };
	} forEach oAmmos;
	publicVariable "oAmmo";

}
