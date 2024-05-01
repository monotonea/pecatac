_captive = _this select 0;

removeAllWeapons _captive ;
_captive playmove "AmovPercMstpSsurWnonDnon" ; 
_captive disableAI "ANIM";
_captive setCaptive true;
_captive addAction ["<t color=""#CCFF00"">Join own group</t>", "scripts\Rescue.sqf","((vehicle _captive) distance  (vehicle _captive)) < 3"];
_captive addaction ["<t color=""#CC0000"">Push</t>", "scripts\push.sqf","((vehicle _captive) distance  (vehicle _captive)) < 3"];
