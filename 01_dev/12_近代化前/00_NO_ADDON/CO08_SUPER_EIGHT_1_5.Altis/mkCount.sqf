if (not isServer) exitWith{};

_mkCountArray=[];
_triggers=[area1,area2,area3,area4,area5,area6,area7,area8];
_mkCreateNum=1;
_mkCountNum=0;

//敵の残数カウント用マーカーの作成

while{_mkCreateNum<9}do	{
	_mk = createMarker
			["mkCount"+ str _mkCreateNum,
				(position (_triggers select (_mkCreateNum-1))
					)];
			 
	_mk setMarkerShape "ICON";
	_mk setMarkerType "mil_dot";
	_mk setMarkerSize [0,0];
	
	_mkCountArray set [count _mkCountArray,_mk];
	
	_mkCreateNum=_mkCreateNum+1;
	
	};
	
//マーカーの数値更新

while {true} do
	 { while {_mkCountNum<8}do
	 		{_currentMk =_mkCountArray select _mkCountNum;
	 		_currentMk setMarkerText 
	 				(str
	 					({ (alive _x)and(side _x == EAST)} count list (_triggers select _mkCountNum))
	 					);			
			_mkCountNum=_mkCountNum+1;
        	sleep 0.1;
		};
	_mkCountNum=0;
	};