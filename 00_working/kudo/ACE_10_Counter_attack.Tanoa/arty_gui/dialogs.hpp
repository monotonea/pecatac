#define GUI_GRID_X      (0)
#define GUI_GRID_Y      (0)
#define GUI_GRID_W      (0.025)
#define GUI_GRID_H      (0.04)
#define GUI_GRID_WAbs   (1)
#define GUI_GRID_HAbs   (1)
class arty_dialog
{
	idd=1000;
	movingenable=false;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by gachopin, v1.063, #Rujeza)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "arty_gui\Support_fire_Main.jpg";
	x = 5 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 31 * GUI_GRID_W;
	h = 17 * GUI_GRID_H;
};
class explanation: RscPicture
{
	idc = 1201;
	//text = "#(argb,8,8,3)color(1,1,1,1)";
	text = "arty_gui\explain.jpg";
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 5 * GUI_GRID_H;
};
class performance: RscPicture
{
	idc = 1202;
	text = "arty_gui\botten_circle_nomal.pac";
	x = 30.03 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1.8 * GUI_GRID_H;
};
class test: RscPicture
{
	idc = 1203;
	text = "arty_gui\botten_circle_nomal.pac";
	x = 24.75 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.25 * GUI_GRID_W;
	h = 0.9 * GUI_GRID_H;
};
class performance_btn: RscButton
{
	idc = 1204;
	x = 30 * GUI_GRID_W + GUI_GRID_X - 0.007;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
onButtonClick = "(_this select 0) call ButtonEvent";
};
class test_btn: RscButton
{
	idc = 1205;
	x = 25 * GUI_GRID_W + GUI_GRID_X - 0.008;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
onButtonClick = "(_this select 0) call ButtonEvent";
};
class OK_light: RscPicture
{
	idc = 1206;
	text = "arty_gui\OK_light.pac";
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1 * GUI_GRID_H + 0.005;
};
class ammo1: RscPicture
{
	idc = 1600;
	text = "arty_gui\botten_HE_push.pac";
	x = 11 * GUI_GRID_W + GUI_GRID_X - 0.015;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W + 0.01;
	h = 2 * GUI_GRID_H;
};
class ammo2: RscPicture
{
	idc = 1601;
	text = "arty_gui\botten_SMOKE_nomal.pac";
	x = 11 * GUI_GRID_W + GUI_GRID_X - 0.015;
	y = 18 * GUI_GRID_H + GUI_GRID_Y - 0.01;
	w = 6 * GUI_GRID_W + 0.01;
	h = 2 * GUI_GRID_H;
};
class ammo1_btn: RscButton
{
	idc = 1602;
	x = 11 * GUI_GRID_W + GUI_GRID_X - 0.01;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
onButtonClick = "(_this select 0) call ButtonEvent";
};
class ammo2_btn: RscButton
{
	idc = 1603;
	x = 11 * GUI_GRID_W + GUI_GRID_X - 0.01;
	y = 18 * GUI_GRID_H + GUI_GRID_Y - 0.01;
	w = 6 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
onButtonClick = "(_this select 0) call ButtonEvent";
};
class EW: RscEdit
{
	idc = 1100;
	text = "123"; //--- ToDo: Localize;
	x = 23.6 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.7 * GUI_GRID_W;
	h = 1.7 * GUI_GRID_H;
	sizeEx = 1.5 * GUI_GRID_H;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,0.6,0,1};
 colorSelection[] = {1,1,1,0.25};
font=PuristaMedium;
};
class SN: RscEdit
{
	idc = 1101;
	text = "456"; //--- ToDo: Localize;
	x = 29.7 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.8 * GUI_GRID_W;
	h = 1.7 * GUI_GRID_H;
	sizeEx = 1.5 * GUI_GRID_H;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,0.6,0,1};
 colorSelection[] = {1,1,1,0.25};
font=PuristaMedium;
};
class left1: RscText
{
	idc = 1003;
	text = "999"; //--- ToDo: Localize;
	x = 17.2 * GUI_GRID_W + GUI_GRID_X;
	y = 15.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 1.2 * GUI_GRID_H;
font=PuristaMedium;
};
class left2: RscText
{
	idc = 1004;
	text = "999"; //--- ToDo: Localize;
	x = 17.2 * GUI_GRID_W + GUI_GRID_X;
	y = 18.3 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 1.2 * GUI_GRID_H;
font=PuristaMedium;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
};

