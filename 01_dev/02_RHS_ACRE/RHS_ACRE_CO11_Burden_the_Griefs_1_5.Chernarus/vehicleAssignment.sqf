if (not isServer) exitwith{};

(units ft0 select 0) assignAsTurret [AH11,[0]];
(units ft0 select 1) assignAsDriver AH11;
(units ft0 select 2) assignAsTurret [AH11,[1]];
(units ft0 select 3) assignAsTurret [AH11,[2]];

(units ft0 select 0) moveinturret [AH11,[0]];
(units ft0 select 1) moveInDriver AH11;
(units ft0 select 2) moveinturret [AH11,[1]];
(units ft0 select 3) moveinturret [AH11,[2]];

{_X assignAsCargo AH11} forEach (units ft1);
{_X moveinCargo AH11} forEach (units ft1);