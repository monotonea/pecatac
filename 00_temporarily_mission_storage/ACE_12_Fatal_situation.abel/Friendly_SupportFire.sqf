_Target = _this select 0;

~3
_x = getpos _Target select 0;
_y = getpos _Target select 1;

?(!isServer) : exit;

~5
Mortar1 doArtilleryFire [[_x + random 70,_y + random 70,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 0.5
Mortar2 doArtilleryFire [[_x - random 50,_y + random 50,0],"8Rnd_82mm_Mo_shells",1];
~3 + random 3

Mortar1 doArtilleryFire [[_x + random 50,_y + random 50,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 0.5
Mortar2 doArtilleryFire [[_x + random 60,_y - random 60,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 0.5

~3 + random 3
Mortar1 doArtilleryFire [[_x + random 60,_y + random 60,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 1
Mortar2 doArtilleryFire [[_x - random 50,_y + random 50,0],"8Rnd_82mm_Mo_shells",1];

~3 + random 4
Mortar1 doArtilleryFire [[_x - random 60,_y + random 60,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 1.5
Mortar2 doArtilleryFire [[_x + random 70,_y - random 70,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 1.5

~3 + random 5
Mortar1 doArtilleryFire [[_x + random 50,_y + random 50,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 1.5
Mortar2 doArtilleryFire [[_x - random 60,_y + random 60,0],"8Rnd_82mm_Mo_shells",1];
~0.1 + random 1.5


exit