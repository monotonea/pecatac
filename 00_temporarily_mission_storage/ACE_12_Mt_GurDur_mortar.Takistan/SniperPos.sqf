
?(!isServer) : exit;

waitUntil { !isNil {player} };
waitUntil { player == player };


_number = 0
~1
_number = 0 +Random 4
? (_number < 1 ) : goto "n1"
? (_number < 2 ) : goto "n2"
? (_number < 3 ) : goto "n3"
? (_number < 100 ) : goto "n4"


#n1

Sniper setpos[(getpos GL1 select 0),(getpos GL1 select 1),0.5];
Sniper setunitpos "DOWN"
Sniper setDir 180

goto "END"

#n2

Sniper setpos[(getpos GL2 select 0),(getpos GL2 select 1),0.5];
Sniper setunitpos "DOWN"
Sniper setDir 45

goto "END"

#n3

Sniper setpos[(getpos GL3 select 0),(getpos GL3 select 1),0.5];
Sniper setunitpos "DOWN"
Sniper setDir 260

goto "END"

#n4

Sniper setpos[(getpos GL4 select 0),(getpos GL4 select 1),0.5];
Sniper setunitpos "DOWN"
Sniper setDir 330

goto "END"


#END
exit
