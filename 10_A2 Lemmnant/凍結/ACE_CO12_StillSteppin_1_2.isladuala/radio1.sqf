sleep 6;
if ((count (units sq1)) >=1 ) then {(leader sq1) sideradio "r01sol01"};
if (((count (units sq1)) == 0) and ((count (units sq2)) >= 1)) then {(leader sq2) sideradio "r01sol01"};
if (((count (units sq1)) == 0) and ((count (units sq2)) == 0)) then {(leader sq3) sideradio "r01sol01"};
sleep 11;
[West,"HQ"] sideradio "r01hq01";