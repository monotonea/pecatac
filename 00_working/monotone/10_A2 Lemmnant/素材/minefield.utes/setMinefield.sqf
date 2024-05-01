//cmdrはselectCmdr.sqfで規定されてる

If (not(cmdr == player)) exitWith{};

hint "click on the map to deploy Minfield";

onMapSingleClick 
	{	//まず地雷作成個数を0にする	
		_madeMineNum = 0;
		while	//mineInitで規定されるminePerSet数を超えるまでループ
			{_madeMineNum <= minePerSet}
		do
			{
    			_id	 = callCount;
    			_trg = createTrigger ["EmptyDetector",_pos];
    			_trg setTriggerArea [rangeX,rangeY,0,false];
    			_trg setTriggerActivation ["ANY", "present", true];
    			_trg setTriggerStatements ["""Man"" counttype thislist >= 1"," nul=[thislist] execVM ""detoMine.sqf""",""];
				_trg setVariable ["field" + str(_id),_trg,true];
				hint "ok";
				_mrk = createMarker ["mrk"+str(callCount),_pos];
				_mrk setMarkerShape "ELLIPSE";
				_mrk setMarkerColor "ColorRed";
				_mrk setMarkerAlpha 0.3;
				_mrk setMarkerSize [rangeX,rangeY];
				callcount 		=	callCount + 1;
				_madeMineNum	=	_madeMineNum + 1;
				publicVariable "callCount";
				
								    
    		};
    	onMapSingleClick "";    
    };

