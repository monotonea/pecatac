/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***       V1.2       ***
***                  ***
************************
*** ...by Clayman
*** 08.04.2010
************************/


#define DEFAULTFONT		"Bitstream"

#define CT_STATIC		  0
#define CT_BUTTON		  1
#define CT_EDIT			  2
#define CT_SLIDER		  3
#define CT_COMBO		  4
#define CT_LISTBOX		  5
#define CT_TOOLBOX		  6
#define CT_CHECKBOXES		  7
#define CT_PROGRESS		  8
#define CT_HTML			  9
#define CT_STATIC_SKEW		 10
#define CT_ACTIVETEXT		 11
#define CT_TREE			 12
#define CT_STRUCTURED_TEXT	 13
#define CT_CONTEXT_MENU		 14
#define CT_CONTROLS_GROUP	 15
#define CT_SHORTCUT_BUTTON	 16
#define CT_XKEYDESC		 40
#define CT_XBUTTON		 41
#define CT_XLISTBOX		 42
#define CT_XSLIDER		 43
#define CT_XCOMBO		 44
#define CT_ANIMATED_TEXTURE	 45
#define CT_OBJECT		 80
#define CT_OBJECT_ZOOM		 81
#define CT_OBJECT_CONTAINER	 82
#define CT_OBJECT_CONT_ANIM	 83
#define CT_LINEBREAK		 98
#define CT_USER			 99
#define CT_MAP			100
#define CT_MAP_MAIN		101
#define CT_LIST_N_BOX		102

#define ST_POS			0x0F
#define ST_HPOS			0x03
#define ST_VPOS			0x0C
#define ST_LEFT			0x00
#define ST_RIGHT		0x01
#define ST_CENTER		0x02
#define ST_DOWN			0x04
#define ST_UP			0x08
#define ST_VCENTER		0x0C
#define ST_TYPE			0xF0
#define ST_SINGLE		  0
#define ST_MULTI		 16
#define ST_TITLE_BAR		 32
#define ST_PICTURE		 48
#define ST_FRAME		 64
#define ST_BACKGROUND		 80
#define ST_GROUP_BOX		 96
#define ST_GROUP_BOX2		112
#define ST_HUD_BACKGROUND	128
#define ST_TILE_PICTURE		144
#define ST_WITH_RECT		160
#define ST_LINE			176
#define ST_SHADOW		0x100
#define ST_NO_RECT		0x200
#define ST_KEEP_ASPECT_RATIO	0x800
#define ST_TITLE		ST_TITLE_BAR + ST_CENTER

#define SL_DIR			0x400
#define SL_VERT			0
#define SL_HORZ			0x400
#define SL_TEXTURES		0x10 

#define LB_TEXTURES		0x10
#define LB_MULTI		0x20 



class RscText
{
	type = CT_STATIC;
	idc = -1;
	style = ST_CENTER;
	colorText[] = {0.75,0.75,0.75,1};
	colorBackground[] = {0,0,0,0};
	font = DEFAULTFONT;
	sizeEx = 0.025;
};
class RscActiveText
{
	type = CT_ACTIVETEXT;
	idc = -1;
	style = ST_CENTER;
	color[] = {0.75,0.75,0.75,1};
	colorActive[] = {1,1,1,1};
	font = DEFAULTFONT;
	sizeEx = 0.025;
	soundClick[] = {"ui\ui_ok",0.2,1};
	soundEnter[] = {"ui\ui_over",0.2,1};
	soundEscape[] = {"ui\ui_cc",0.2,1};
	soundPush[] = {, 0.2, 1};
	default = false;
};
class RscButton
{
	type = CT_BUTTON;
	idc = -1;
	style = ST_CENTER;
	borderSize = 0;
	colorText[] = {0.75,0.75,0.75,1};
	colorDisabled[] = {0.35,0.35,0.35,0};
	colorBackground[] = {0.2,0.2,0.2,1};
	colorBackgroundActive[] = {0.5,0.5,0.5,1};
	colorBackgroundDisabled[] = {0.35,0.35,0.35,0};
	colorFocused[] = {0.2,0.2,0.2,1};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	font = DEFAULTFONT;
	sizeEx = 0.029;
	offsetX = 0.005;
	offsetY = 0.005;
	offsetPressedX = 0.0025;
	offsetPressedY = 0.0025;
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEnter[] = {"",0.1,1};
	soundEscape[] = {"ui\ui_cc",0.2,1};
	default = false;
};
class RscEdit
{
	type = CT_EDIT;
	idc = -1;
	style = ST_LEFT;
	font = DEFAULTFONT;
	sizeEx = 0.029;
	colorSelection[] = {0.3,0.3,0.3,1};
	colorText[] = {0.75,0.75,0.75,1};
	autocomplete = false;
	text = ;
};
class RscLB_C
{
	style = ST_LEFT;
	idc = -1;
	colorBackground[] = {0.2,0.2,0.2,1};
	colorSelect[] = {0.25,0.25,0.25,1};
	colorSelectBackground[] = {0.6,0.6,0.6,1};
	colorText[] = {0.8,0.8,0.8,1};
	colorScrollbar[] = {0.75,0.75,0.75,1};
	period = 1;
	font = DEFAULTFONT;
	sizeEx = 0.029;
	rowHeight = 0.04;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 10;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class RscListBox: RscLB_C
{
	type = CT_LISTBOX;
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};
class RscCombo: RscLB_C
{
	type = CT_COMBO;
	thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
	arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
	border = "\ca\ui\data\ui_border_scroll_ca.paa";
	wholeHeight = 0.45;
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};



class DlgViewer
{
	idd = 200;
	movingEnable = true;
	controlsBackground[] = {ViewerBackground, ViewerFrame};
	class ViewerBackground: RscText
	{
		idc = 201;
		colorBackground[] = {0.2,0.2,0.2,0.75};
		text = ;
		x = (0.5 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.5 * SafeZoneW);
		h = (1 * SafeZoneH);
	};
	class ViewerFrame: RscText
	{
		idc = 202;
		colorText[] = {1,0,0,1};
		colorBackground[] = {0,0,0,1};
		font = "EtelkaMonospaceProBold";
		sizeEx = (0.025 * SafeZoneH);
		text = "Animation Viewer V1.2";
		x = (0.5 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.5 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	controls[] = {AnimListBox, AnimStoreBox, TextStore, ButtonAdd, ButtonRemove, ButtonClear, TextUnit, SelectUnit, TextWeapon, SelectWeapon, TextType, SelectType, TextPosition, SelectPosition, TextMove, SelectMove, TextBehaviour, SelectBehaviour, ButtonPlay, ButtonSwitch, ButtonReset, ButtonEnd, ButtonCopy, ButtonZoomIn, ButtonZoomOut, TextCamera, ButtonCamFront, ButtonCamBack, ButtonCamLeft, ButtonCamRight};
	class AnimListBox: RscListbox
	{
		idc = 203;
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.225 * SafeZoneH + SafeZoneY);
		w = (0.49 * SafeZoneW);
		h = (0.46 * SafeZoneH);
	};
	class AnimStoreBox: RscListBox
	{
		idc = 228;
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.83 * SafeZoneH + SafeZoneY);
		w = (0.49 * SafeZoneW);
		h = (0.16 * SafeZoneH);
	};
	class TextStore: RscText
	{
		idc = 229;
		text = "Saved Animations:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.81 * SafeZoneH + SafeZoneY);
		w = (0.15 * SafeZoneW);
		h = (0.015 * SafeZoneH);
	};
	class ButtonAdd: RscButton
	{
		idc = 230;
		text = "Add";
		action = "[1] execVM 'AnimationViewer\store.sqf'";
		x = (0.65 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonRemove: RscButton
	{
		idc = 231;
		text = "Remove";
		action = "[2] execVM 'AnimationViewer\store.sqf'";
		x = (0.76 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonClear: RscButton
	{
		idc = 232;
		text = "Clear";
		action = "lbClear 228";
		x = (0.87 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextUnit: RscText
	{
		idc = 204;
		text = "Unit:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.075 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectUnit: RscCombo
	{
		idc = 205;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.075 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class TextWeapon: RscText
	{
		idc = 206;
		text = "Weapon:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.075 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectWeapon: RscCombo
	{
		idc = 207;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.075 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class TextType: RscText
	{
		idc = 208;
		text = "Type:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.125 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectType: RscCombo
	{
		idc = 209;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.125 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class TextPosition: RscText
	{
		idc = 210;
		text = "Position:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.125 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectPosition: RscCombo
	{
		idc = 211;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.125 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class TextMove: RscText
	{
		idc = 212;
		text = "Movement:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.175 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectMove: RscCombo
	{
		idc = 213;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.175 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class TextBehaviour: RscText
	{
		idc = 214;
		text = "Behaviour:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.175 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class SelectBehaviour: RscCombo
	{
		idc = 215;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.175 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.035 * SafeZoneH);
	};
	class ButtonPlay: RscButton
	{
		idc = 216;
		text = "playMove";
		action = "CLAY_Animator playMove lbText [203, lbCurSel 203]";
		x = (0.515 * SafeZoneW + SafeZoneX);
		//y = (0.825 * SafeZoneH + SafeZoneY);
		y = (0.69 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonSwitch: RscButton
	{
		idc = 217;
		text = "switchMove";
		action = "CLAY_Animator switchMove lbText [203, lbCurSel 203]";
		x = (0.635 * SafeZoneW + SafeZoneX);
		y = (0.69 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonReset: RscButton
	{
		idc = 218;
		text = "Reset";
		action = "CLAY_Animator setPos CLAY_AnimStartPos; CLAY_Animator setDir 0; CLAY_Animator playMove ''; CLAY_Animator switchMove ''";
		x = (0.885 * SafeZoneW + SafeZoneX);
		y = (0.69 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonEnd: RscButton
	{
		idc = 219;
		colorText[] = {0,0,0,1};
		colorBackground[] = {0.2,0,0,1};
		colorBackgroundActive[] = {0.2,0,0,1};
		colorFocused[] = {0.2,0,0,1};
		text = "X";
		action = "closeDialog 0; CLAY_End = true";
		x = (0.95 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.05 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class ButtonCopy: RscButton
	{
		idc = 220;
		text = "Copy";
		action = "[3] execVM 'AnimationViewer\store.sqf'";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.69 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonZoomIn: RscButton
	{
		idc = 221;
		text = "ZOOM +";
		action = "[1] execVM 'AnimationViewer\campos.sqf'";
		x = (0.515 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonZoomOut: RscButton
	{
		idc = 222;
		text = "ZOOM -";
		action = "[2] execVM 'AnimationViewer\campos.sqf'";
		x = (0.515 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextCamera: RscText
	{
		idc = 223;
		text = "Camera Position:";
		x = (0.645 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class ButtonCamFront: RscButton
	{
		idc = 224;
		text = "Front";
		action = "[3] execVM 'AnimationViewer\campos.sqf'";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamBack: RscButton
	{
		idc = 225;
		text = "Back";
		action = "[4] execVM 'AnimationViewer\campos.sqf'";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamLeft: RscButton
	{
		idc = 226;
		text = "Left";
		action = "[5] execVM 'AnimationViewer\campos.sqf'";
		x = (0.875 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamRight: RscButton
	{
		idc = 227;
		text = "Right";
		action = "[6] execVM 'AnimationViewer\campos.sqf'";
		x = (0.875 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
};
