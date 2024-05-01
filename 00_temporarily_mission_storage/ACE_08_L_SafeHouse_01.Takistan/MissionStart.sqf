waitUntil { !isNil {player} };
waitUntil { player == player };
CutText ["Mission start","BLACK OUT",7];

GoMission = true;

Heli_11 SetFuel 1;
Heli_11 limitSpeed 1;
Heli_12 SetFuel 1;
Heli_12 limitSpeed 1;

uiSleep 7;

Heli_21 setdir 0;
Heli_21 SetVelocity [0,0,0];
Heli_21 limitSpeed 1;
Heli_22 setdir 0;
Heli_22 SetVelocity [0,0,0];
Heli_22 limitSpeed 0;

uiSleep 1;
Heli_21 setpos[(getpos LZ_H1 select 0),(getpos LZ_H1 select 1) ,1];
Heli_22 setpos[(getpos LZ_H2 select 0),(getpos LZ_H2 select 1) ,1];
Heli_21 SetFuel 1;
Heli_22 SetFuel 1;
uiSleep 1;

P1 setpos[(getpos LZ_P1 select 0),(getpos LZ_P1 select 1) ,0.2];
P1 setdir(getdir LZ_P1);
P2 setpos[(getpos LZ_P2 select 0),(getpos LZ_P2 select 1) ,0.2];
P2 setdir(getdir LZ_P2);
P3 setpos[(getpos LZ_P3 select 0),(getpos LZ_P3 select 1) ,0.2];
P3 setdir(getdir LZ_P3);
P4 setpos[(getpos LZ_P4 select 0),(getpos LZ_P4 select 1) ,0.2];
P4 setdir(getdir LZ_P4);
P5 setpos[(getpos LZ_P5 select 0),(getpos LZ_P5 select 1) ,0.2];
P5 setdir(getdir LZ_P5);
P6 setpos[(getpos LZ_P6 select 0),(getpos LZ_P6 select 1) ,0.2];
P6 setdir(getdir LZ_P6);
P7 setpos[(getpos LZ_P7 select 0),(getpos LZ_P7 select 1) ,0.2];
P7 setdir(getdir LZ_P7);
P8 setpos[(getpos LZ_P8 select 0),(getpos LZ_P8 select 1) ,0.2];
P8 setdir(getdir LZ_P8);

uiSleep 1;
DeleteVehicle Heli_P11;
DeleteVehicle Heli_P12;
DeleteVehicle Heli_11;
DeleteVehicle Heli_P13;
DeleteVehicle Heli_P14;
DeleteVehicle Heli_12;

uiSleep 1;
CutText ["Mission start","BLACK IN",5];
uiSleep 3;

HeliOut = true;
Heli_21 FlyInHeight 100;
Heli_21 limitSpeed 190;
(Driver Heli_21) SideChat "こちらhumming bird 1-1、離陸し所定の位置で待機する。";

uiSleep 6;
Heli_22 FlyInHeight 110;
Heli_22 limitSpeed 220;

hint "作戦開始";


exit
