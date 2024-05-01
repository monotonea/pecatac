//コマンダーの継承順位に特にこだわらないなら、これはいらない。
waitUntil{ListCreated};

_unit = _this select 0;
_rank = _this select 1;

HcList set [_rank,_unit];