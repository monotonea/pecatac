_Target = _this select 0;

~2
_x = getpos _Target select 0;
_y = getpos _Target select 1;

?(!isServer) : exit;

~3
Podnos1 doArtilleryFire [[_x - random 50,_y + random 50,0],"rhs_mag_3vo18_10",1];
~28 + random 10
Podnos1 doArtilleryFire [[_x + random 70,_y + random 70,0],"rhs_mag_3vo18_10",1];
Podnos2 doArtilleryFire [[_x - random 50,_y + random 50,0],"rhs_mag_3vo18_10",1];
Podnos3 doArtilleryFire [[_x + random 50,_y - random 50,0],"rhs_mag_3vo18_10",1];
Podnos4 doArtilleryFire [[_x - random 60,_y - random 60,0],"rhs_mag_3vo18_10",1];
~3 + random 3

Podnos1 doArtilleryFire [[_x + random 50,_y + random 50,0],"rhs_mag_3vo18_10",1];
~0.1 + random 0.5
Podnos2 doArtilleryFire [[_x - random 70,_y + random 70,0],"rhs_mag_3vo18_10",1];
~0.1 + random 0.5
Podnos3 doArtilleryFire [[_x + random 60,_y - random 60,0],"rhs_mag_3vo18_10",1];
~0.1 + random 0.5
Podnos4 doArtilleryFire [[_x - random 50,_y - random 50,0],"rhs_mag_3vo18_10",1];

~3 + random 3
Podnos1 doArtilleryFire [[_x + random 60,_y + random 60,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1
Podnos2 doArtilleryFire [[_x - random 50,_y + random 50,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1
Podnos3 doArtilleryFire [[_x + random 50,_y - random 50,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1
Podnos4 doArtilleryFire [[_x - random 70,_y - random 70,0],"rhs_mag_3vo18_10",1];

~3 + random 3
Podnos1 doArtilleryFire [[_x + random 50,_y + random 50,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1.5
Podnos2 doArtilleryFire [[_x - random 60,_y + random 60,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1.5
Podnos3 doArtilleryFire [[_x + random 70,_y - random 70,0],"rhs_mag_3vo18_10",1];
~0.1 + random 1.5
Podnos4 doArtilleryFire [[_x - random 50,_y - random 50,0],"rhs_mag_3vo18_10",1];

exit