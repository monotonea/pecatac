aP action ["eject",HaloAn2];
aP setvelocity [0,0,0];
[aP] exec "ca\air2\halo\data\Scripts\HALO_getout.sqs";
[]	spawn	
			{	
				while
					{
					  	(getPosATL aP select 2) > 5
					}
				do
					{
					hintSilent format ["Altitude:%1",getposATL ap select 2];
					sleep 0.1;
					};
				
			};

waitUntil	{(getPosATL aP select 2) <5};

hintSilent "";
aP removeWeapon "ItemGPS";
sleep 10;
aP setDamage 0;
