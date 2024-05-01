_posX = position starter select 0;
_posY = position starter select 1;
genCount = 0;
markerDone = true;
while {_posY < 15000}
	do { 
		while {_posX < 16000}
			do {genCount = gencount+1;
				_posX = _posX +100;
				newLogic = "Cock" createVehicle [_posX,_posY];
				waitUntil {markerDone};
				markerDone = false;
				nul = [newLogic] execVM "markerGen.sqf";
				};
		_posX = 0;
		_posY = _posY + 100;
		};