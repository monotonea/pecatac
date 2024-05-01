/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***       V1.2       ***
***                  ***
************************
*** ...by Clayman
*** 08.04.2010
************************/


_unit = lbValue [205, lbCurSel 205];
_weap = lbValue [207, lbCurSel 207];
_type = lbValue [209, lbCurSel 209];
_pos  = lbValue [211, lbCurSel 211];
_move = lbValue [213, lbCurSel 213];


_tArray = [];

lbClear 203;
player globalChat "PLEASE WAIT...";


for [{_i = 0}, {_i < count CLAY_AnimArray}, {_i = _i + 1}] do 
{
	_actAnim = CLAY_AnimArray select _i;
	If ( ((_actAnim select 1) == _unit) && ((_actAnim select 2) == _weap || _weap == 0) && ((_actAnim select 3) == _type || _type == 0) && ((_actAnim select 4) == _pos || _pos == 0) && ((_actAnim select 5) == _move || _move == 0) ) Then 
	{
		_tArray = _tArray + [(_actAnim select 0)];
	};
};


for [{_i = 0}, {_i < count _tArray}, {_i = _i + 1}] do
{
	_index = lbAdd [203, (_tArray select _i)];
};


player globalChat format ["DONE! %1 Animations in List.", count _tArray];
