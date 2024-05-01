if (isServer) then 
		{
			_killer = _this select 1;
			if (side _killer == west) then {civVicP = civVicP +1};
			publicVariable "civVicP";
		};