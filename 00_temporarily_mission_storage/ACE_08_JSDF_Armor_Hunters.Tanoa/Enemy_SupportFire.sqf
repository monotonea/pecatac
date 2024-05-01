_Target = _this select 0;

~2
_x = getpos _Target select 0;
_y = getpos _Target select 1;

?(!isServer) : exit;

~3
Podnos1 doArtilleryFire [[_x + random 120,_y + random 120,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos2 doArtilleryFire [[_x - random 90,_y + random 90,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos3 doArtilleryFire [[_x + random 90,_y - random 90,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos4 doArtilleryFire [[_x - random 100,_y - random 100,0],"rhs_mag_3vo18_10",1];
~25 + random 15
Podnos1 doArtilleryFire [[_x + random 100,_y + random 100,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos2 doArtilleryFire [[_x - random 80,_y + random 80,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos3 doArtilleryFire [[_x + random 90,_y - random 90,0],"rhs_mag_3vo18_10",1];
~25 + random 15
Podnos1 doArtilleryFire [[_x + random 80,_y + random 80,0],"rhs_mag_3vo18_10",1];
~1 + random 3
Podnos4 doArtilleryFire [[_x - random 110,_y - random 110,0],"rhs_mag_3vo18_10",1];






exit