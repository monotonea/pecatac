ncount0=0;
ncount1=0;

count0 = compile "nCount0=({_x in evacArea} count units ft0)";
count1 = compile "ncount1=({_x in evacArea} count units ft1)";

waitUntil {graddestroyed};
while {not (
			(ncount0 + ncount1) == ((count units ft0)+(count units ft1))
				)
		}
		do 
			{call count0;call count1};
hint "ok";