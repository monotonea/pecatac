_pilot = _this select 0;
_craft = vehicle _pilot;

//飛行機の高度が50m以下になったら1000m上空まで送り飛ばします
while {true} do 
{
	waitUntil { ((position (_craft) select 2) < 50)};
	(_craft) setPos [position (_craft) select 0,position (_craft) select 1,1000];
	sleep 1;
};