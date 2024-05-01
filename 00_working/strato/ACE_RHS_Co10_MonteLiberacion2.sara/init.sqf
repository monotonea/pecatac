if(isServer)then{
	{_x setSkill 1; _x setSkill ["aimingAccuracy", 0.3]} forEach allUnits; 
	{
		if(side _x == west) then{
			_x assignItem "rhsusf_ANPVS_14"; _x assignItem "rhsusf_ANPVS_15";
			_vest = vest _x;
			/*if(_vest find "rhsusf_iotv_ucp" == 0) then{
				_newVest = [_vest, "rhsusf_iotv_ucp", "rhsusf_iotv_ocp"] call CBA_fnc_replace;
				removeVest _x;
				_x addVest _newVest;
			};*/
			if(_vest find "rhsusf_spcs_ucp" == 0) then{
				_newVest = "rhsusf_spcs_ocp";
				_items = vestItems _x;
				removeVest _x;
				_x addVest _newVest;
				_unit = _x;
				{_unit addItemToVest _x}forEach _items;
			};
		};
	} forEach allUnits;
}