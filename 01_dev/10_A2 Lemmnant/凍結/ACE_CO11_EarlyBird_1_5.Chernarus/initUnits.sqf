if (initPosDeactivate) exitWith {};

{_x moveInCargo EarlyBird} forEach Units grpA;
units grpB select 0 moveInDriver EarlyBird;
units grpB select 1 moveInTurret [EarlyBird,[0]];
units grpB select 2 moveInTurret [EarlyBird,[1]];
units grpB select 3 moveInTurret [EarlyBird,[2]];

{_x setPosASL [getPos _x select 0, getPos _x select 1,17]} forEach [EarlyBird,osprey1,osprey2,osprey3,osprey4];

EarlyBird addMagazineTurret ["4000Rnd_762x51_M134",[0]];
EarlyBird addMagazineTurret ["4000Rnd_762x51_M134",[0]];
EarlyBird addMagazineTurret ["4000Rnd_762x51_M134",[1]];
EarlyBird addMagazineTurret ["4000Rnd_762x51_M134",[1]];

lighter action ["lightOn",EarlyBird];
{_x setBehaviour "safe"} forEach [osprey1,osprey2,osprey3,osprey4];