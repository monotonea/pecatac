_M113 = _this select 0;
_InfGroup = _this select 2;
~3
_M113 forceSpeed 0.01;
~5
[_InfGroup, 2] SetWPPos (getpos _M113);
~20
_M113 forceSpeed 100;
exit