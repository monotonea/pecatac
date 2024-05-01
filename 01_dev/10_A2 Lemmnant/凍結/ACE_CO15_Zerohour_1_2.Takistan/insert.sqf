if (time < 10) then
{
    titleCut ["", "BLACK FADED", 999];
    [] Spawn 
    {
        waitUntil{!(isNil "BIS_fnc_init")};
        // Info text
     	   [str("Zero Hour") ,
     	    str(date select 1) + "." + str(date select 2) + "." + str(date select 0),
     	    str(23) + ":" + str(35)]
     	      	   					  spawn BIS_fnc_infoText;
        
        sleep 3;
		"dynamicBlur" ppEffectEnable true;   
		"dynamicBlur" ppEffectAdjust [6];   
		"dynamicBlur" ppEffectCommit 0;     
		"dynamicBlur" ppEffectAdjust [0.0];  
		"dynamicBlur" ppEffectCommit 7;
        titleCut ["", "BLACK IN", 5]
    };
};