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


switch (_this select 0) do
{
	case 1:
	{
		_anim = lbText [203, lbCurSel 203];
		_unit = lbText [205, lbCurSel 205];
		_weap = lbText [207, lbCurSel 207];
		_type = lbText [209, lbCurSel 209];
		_pos  = lbText [211, lbCurSel 211];
		_move = lbText [213, lbCurSel 213];

		_index = lbAdd [228, format ["%1 [%2, %3, %4, %5, %6]", _anim, _unit, _weap, _type, _pos, _move]];
		lbSetData [228, _index, _anim];
	};
	case 2:
	{
		lbDelete [228, lbCurSel 228];
	};
	case 3:
	{
		_savedAnims = [];
		for "_i" from 0 to ((lbSize 228) - 1) do
		{
			_anim = lbData [228, _i];
			_savedAnims = _savedAnims + [_anim];
		};
		copyToClipboard format ["%1", _savedAnims];
	};
};
