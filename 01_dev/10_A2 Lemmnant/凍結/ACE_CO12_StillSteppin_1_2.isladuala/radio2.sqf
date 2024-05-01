[West,"HQ"] sideradio "r02hq01";
sleep 11;
if ((count (units sq1)) >=1 ) then {(leader sq1) sideradio "r02sol01"};
if (((count (units sq1)) == 0) and ((count (units sq2)) >= 1)) then {(leader sq2) sideradio "r02sol01"};
if (((count (units sq1)) == 0) and ((count (units sq2)) == 0)) then {(leader sq3) sideradio "r02sol01"};