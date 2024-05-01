/*
砲撃支援スクリプト	2015/1/19	by gachopin
ARTY_TEAMを増やせば発射拠点を増やせます
Arty_Reloadを0にしてミッション側で1にすれば好きな時間に砲撃支援が可能になります
ユニットのinitにthis addaction ["call arty","arty_script.sqf"]を書けばそこが発射命令拠点です
GUI内の説明書きはarty_guiフォルダ内のexplain.jpgを変更。（jpgの解像度はなんでもいいみたい）
*/
[] spawn compile preprocessFileLineNumbers "arty_gui\fnc.sqf";
ARTY_test_shot_count	= 1;	//試射で撃つ数
ARTY_fire_shot_count	= 10;	//効力射で撃つ数

//MAPごとの補正　X,Yは倍率　XA、YAは補正値

ARTY_X			= 1;
ARTY_XA			= 0.8;
ARTY_Y			= 1;
ARTY_YA			= 0.95;

ARTY_TEAM		= [mo1,mo2,mo3];
ARTY_magazine		= ["8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_Smoke_white"];
//ARTY_magazine		= ["12Rnd_230mm_rockets","8Rnd_82mm_Mo_Smoke_white"];
ARTY_POS_RANDOM		= 90;	//ランダムな位置に着弾(0でも可)
	missionnamespace setvariable ["EW",115];	//初期座標(ヨコ)
	missionnamespace setvariable ["SN",062];	//初期座標(タテ)
player execVM "arty_gui\arty_player.sqf";
if (isServer) then{
	missionnamespace setvariable ["Arty_Ammo1",30];	//榴弾
	publicvariable "Arty_Ammo1";
	missionnamespace setvariable ["Arty_Ammo2",20];//煙幕弾
	publicvariable "Arty_Ammo2";
	missionnamespace setvariable ["Arty_Reload",1];	//0で最初は撃てない
	publicvariable "Arty_Reload";
	missionnamespace setvariable ["Arty_Fire",[0]];
	[] execVM "arty_gui\arty_server.sqf";
	[ARTY_TEAM] execVM "arty_gui\arty_event.sqf";
};
	missionnamespace setvariable ["Arty_Wait1",8];	//試射命令後の待ち時間（秒)　0でもよい
	missionnamespace setvariable ["Arty_Wait2",25];	//効力射命令後の待ち時間（秒)　0でもよい

	
	
	
	
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side=true;
//initWeaponFunction =  compile preprocessFileLineNumbers "initWeapon.sqf";
//call initWeaponFunction;

execVM "briefing.sqf";