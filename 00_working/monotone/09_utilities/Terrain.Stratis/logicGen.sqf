//start
_sPosX = position startPos select 0;
_sPosY = position startPos select 1;

//end
_ePosX = position endPos select 0;
_ePosY = position endPos select 1;

//current
_cPosX = _sPosX;
_cPosY = _sPosY;

//解像度
_res = _this select 0;

//genCountはマーカーのユニークネームをつけるのに使う
genCount = 0;
markerDone = true;

while {_cPosY < _ePosY}
	do { 
		while {_cPosX < _ePosX}
			do {genCount = gencount+1;
				_cPosX = _cPosX +_res;
				hint format ["%1,%2",_cposX,_cPosY];
				_newLogic = "Rabbit_F" createVehicle [_cPosX,_cPosY];
				waitUntil {markerDone};
				markerDone = false;
				nul = [_newLogic,_res] execVM "markerGen.sqf";
				};
		_cPosX = _sPosX;
		_cPosY = _cPosY + _res;
		};