_flag = _this select 0;
_flag addAction ["<t color=""#CCFF00"">Change the flag</t>", "scripts\flag.sqf","((vehicle _flag) distance  (vehicle _flag)) < 1"];

