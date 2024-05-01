objAmmo attachto [objLogic,[0,0,0]];

dist= 0.75;
IF (objPosID == 0) then{objLogic setpos (position objPos_0);};
IF (objPosID == 1) then{objLogic setpos (position objPos_1);};
IF (objPosID == 2) then{objLogic setpos (position objPos_2);};
IF (objPosID == 3) then{objLogic setpos (position objPos_3);};
IF (objPosID == 4) then{objLogic setpos (position objPos_4);};

/*
fuel_0 setpos [(position objLogic select 0)+(dist*0),(position objLogic select 1)+(dist*0),0];
fuel_1 setpos [(position objLogic select 0)+(dist*0),(position objLogic select 1)+(dist*1),0];
fuel_2 setpos [(position objLogic select 0)+(dist*1),(position objLogic select 1)+(dist*0),0];
fuel_3 setpos [(position objLogic select 0)+(dist*1),(position objLogic select 1)+(dist*1),0];
*/