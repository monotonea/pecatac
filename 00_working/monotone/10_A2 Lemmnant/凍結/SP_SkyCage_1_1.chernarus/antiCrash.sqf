_pilot = _this select 0;
_craft = vehicle _pilot;

//”òs‹@‚Ì‚“x‚ª50mˆÈ‰º‚É‚È‚Á‚½‚ç1000mã‹ó‚Ü‚Å‘—‚è”ò‚Î‚µ‚Ü‚·
while {true} do 
{
	waitUntil { ((position (_craft) select 2) < 50)};
	(_craft) setPos [position (_craft) select 0,position (_craft) select 1,1000];
	sleep 1;
};