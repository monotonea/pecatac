ButtonEvent =
{
private ["_dialog","_performance_btn_Ctrl","_test_btn_Ctrl","_ammo1_btn_Ctrl","_ammo2_btn_Ctrl"];
_dialog = findDisplay 1000;
_performance_btn_Ctrl	= (findDisplay 1000 displayCtrl 1204);
_test_btn_Ctrl		= (findDisplay 1000 displayCtrl 1205);
_ammo1_btn_Ctrl		= (findDisplay 1000 displayCtrl 1602);
_ammo2_btn_Ctrl		= (findDisplay 1000 displayCtrl 1603);

	if(_this == _performance_btn_Ctrl)then{	//効力射ボタン
		//uinamespace setvariable ["Fire_btn",true];
		Fire_btn = true;
	};
	if(_this == _test_btn_Ctrl)then{	//試射ボタン
		//uinamespace setvariable ["FireTest_btn",true];
		FireTest_btn = true;
	};
	if(_this == _ammo1_btn_Ctrl)then{	//榴弾ボタン
		//uinamespace setvariable ["AMMO1_btn",true];
		AMMO1_btn = true;
	};
	if(_this == _ammo2_btn_Ctrl)then{	//煙幕ボタン
		//uinamespace setvariable ["AMMO2_btn",true];
		AMMO2_btn = true;
	};
};