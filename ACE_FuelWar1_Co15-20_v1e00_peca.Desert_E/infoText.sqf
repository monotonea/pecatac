/*Install info:
- place this .sqf file into your mission folder
- see examples below for script calling syntax*/
/*
	File: infoText.sqf
	Author: Karel Moricky
	
	edited ver. by Feuerex (extended customization)
	Description:
	Info with some effect.

	Parameter(s):
	_this select 0: array of strings containing text.
	_this select 1: rate at which individual letters appear (0-99)
	_this select 2: pause after constructing the text until deconstructing it (0-99)
	_this select 3: X coordinates (0-1)*, optional
	_this select 4: Y coordinates (0-1)*, optional
	* values may differ for different screen resolutions. I recommend using SafeZone.
	
	Handle = [["Text", "Text(optional)", "Text(optional)"], individual letters rate, overall pause, X, Y] execVM "infoText.sqf";
	
	examples:
	null = [["First line","Second line","Third line"], 0.01, 6] execVM "infoText.sqf";
	text appears on it's default position (arguments for X, Y aren't used), stays for 6 seconds.
	
	null = [["First line","Second line","Third line"], 0.01, 5, 0.5,0.8] execVM "infoText.sqf"; 
	text appears very quickly and then hangs for 5 seconds before it starts to disappear. 
	
	null = [["Mission name","By: Author name","Date"], 0.03, 4, SafeZoneX, SafeZoneY/1.5] execVM "infoText.sqf";
	text is appearing a bit more slowly and hangs for 4 seconds before disappearing.
	*/

(["BIS_fnc_infoText"] call bis_fnc_rscLayer) cutRsc ["rscInfoText","plain"];

//---Parameters
_text = _this select 0;
_rate = _this select 1;
_pause = _this select 2;

//---Time related restrictions
_minTime = 0;
_maxTime = 99;
if (_rate < _minTime || _rate > _maxTime) exitWith {
["InfoText - Time value out of range", _rate] call BIS_fnc_errorMsg};

//--- Separate lines
_textArrayUnicode = [];
{_textArrayUnicode = _textArrayUnicode + [toarray _x]} foreach _text;

//--- Separate letters
_textArrayLines = [];
for "_i" from 0 to (count _textArrayUnicode - 1) do {
	_line = _textArrayUnicode select _i;
	_textArrayTemp = [];
	{_textArrayTemp = _textArrayTemp + [tostring [_x]]} foreach _line;
	_textArrayLines set [_i,_textArrayTemp];
};


//--- Merge arrays
_textArray = [];
_emptyArray = [];
_nArrayTemp = [];
_n = 0;
{
	_line = _x;
	_textArray = _textArray + _line + ["\n"];
	{
		//_emptyArray = _emptyArray + [_line call bis_fnc_selectrandom]; //--- Shuffled text
		//_emptyArray = _emptyArray + [str floor random 2]; //--- Binary Solo
		//_emptyArray = _emptyArray + [""]; //--- Rolling text
		_emptyArray = _emptyArray + [" "]; //--- Space
		_nArrayTemp = _nArrayTemp + [_n];
		_n = _n + 1;
	} foreach _x;
	_n = _n + 1;
	_emptyArray = _emptyArray + ["\n"];
} foreach _textArrayLines;
_finalArray = _emptyArray;
_text = composetext _finalArray;


//--- Random order
_nArray = [];
while {count _nArrayTemp > 0} do {
	_element = _nArrayTemp select (floor random (count _nArrayTemp));
	_nArray = _nArray + [_element];
	_nArrayTemp = _nArrayTemp - [_element];
};


//--- Visualization
disableserialization;
_display = uinamespace getvariable "BIS_InfoText";

_textControl = _display displayctrl 3101;



_text = composetext _finalArray;
_textControl ctrlsettext str _text;
if (count _this > 4) then {
_textControl ctrlsetPosition [_this select 3,_this select 4];};
_textControl ctrlcommit 0.01;
sleep 1;

{
	_finalArray set [_x,_textArray select _x];
	_text = composetext _finalArray;
	_textControl ctrlsettext str _text;
	_textControl ctrlcommit 0.01;
	playsound "ReadoutClick";
	//hintsilent str _text;
	if (random 1 > 0.9) then {sleep 0.1};
	sleep _rate;
} foreach _nArray;

sleep _pause;


//--- Fade away
{
	_finalArray set [_x," "];
	_text = composetext _finalArray;
	_textControl ctrlsettext str _text;
	_textControl ctrlcommit 0.01;
	playsound "ReadoutClick";
		//hintsilent str _text;
	//if (random 1 > 0.9) then {sleep 0.2};
	sleep _rate;
} foreach _nArray;


//([] call bis_fnc_rscLayer) cuttext ["","plain"];


