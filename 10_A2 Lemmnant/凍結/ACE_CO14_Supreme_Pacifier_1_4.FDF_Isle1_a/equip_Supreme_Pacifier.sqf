//////////////////////////////////////////////////////////////////
//	equip_Supreme_Pacifier.sqf		Origin and Element Created by Type90
//									Optimized by Monotone
//////////////////////////////////////////////////////////////////
//	謎の呪文再び プレイヤーの初期化待ちだとはおもうけど
if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};
//	謎の待機命令 無いと動かない
sleep 0.1;

//	スクリプトへ渡される配列の0番目を取得する
//	例文	equipment = [this,TypeCommander] execVM "equip_Supreme_Pacifier.sqf";
_unit	  = _this select 0;
_unitType = _this select 1;
//	ユニットの生成待ち(サーバでは必要ないらしい)
if (!isServer) then {
	//	プレイヤーのインスタンスは自分のクライアント上でローカル
	//	自分がAIのリーダならチームメンバは自分のクライアント上でローカル
	//	AIリーダはサーバ上でローカル

	//					プレイヤー		プレイヤーがリーダのグループのAI		AIがリーダのグループのAI
	//	クライアント		○					○										×
	//	サーバ				×					×										○
	if ( (_unit==player) || (player == leader group _unit) ) then
	{
		waitUntil { local _unit };
	};
	//	リーダがプレイヤーでチームにAIユニットが多いと装備失敗する場合があったのでウェイト設定
	sleep 0.1;
};
//	ローカルに無いなら処理しないで終了
if (!local _unit) exitwith {};
//////////////////////////////////////////////////////////////////
//	ここまで

//////////////////////////////////////////////////////////////////
_wepAR		= "AK_74";
_wepAR_Sc	= "ACE_AK74M_PSO";
_wepAR_GL	= "AK_74_GL";
_wepMG		= "PK";
_wepSVD		= "SVD_CAMO";

_magAR		= "30Rnd_545x39_AK";
_magAR_t	= "ACE_30Rnd_545x39_T_AK";
_magMG		= "100Rnd_762x54_PK";
_magGL		= "1Rnd_HE_GP25";
_magSVD		= "ACE_10Rnd_762x54_T_SVD";

_wepAT		= "ACE_RPG7V_PGO7";
_magAT_HEAT	= "PG7V";
_magAT_AP	= "OG7";

_wepSMG		= "ACE_Scorpion";
_magSMG		= "ACE_20Rnd_765x17_vz61";

_gr			= "HandGrenade_East";
_smoke		= "SmokeShell";
_sc			= "Pipebomb";
_ruck		= "ACE_Rucksack_RD54";

_medkit	= "ACE_MEDKIT";
_bandage	= "ACE_Bandage";
_morphine	= "ACE_Morphine";
_epine		= "ACE_Epinephrine";

_earplugs	= "ACE_Earplugs";
//////////////////////////////////////////////////////////////////
//	役職でスイッチ
switch (_unitType) do {
		case 	"TypeCommander":{
		//	クラス名が一致したものだけリムーブウェポン
		removeAllWeapons _unit;
		//	マガジン類の装備
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		//	武器類の装備
		{ _unit addWeapon _x }		forEach	[_wepAR_Sc,"Binocular","NVGoggles",_ruck,_earplugs];
		//背中に入れるもの
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			3] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		3] 	call ACE_fnc_PackMagazine;
		[ _unit, _sc,			1]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeMedic":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_smoke,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		10]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		10]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeLeader":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_gr,_smoke,_smoke,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_Sc,"Binocular",_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAT_HEAT,	1] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAT_AP,		1] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _sc,			1]	call ACE_fnc_PackMagazine;
	};
	
		case 	"TypeMachinegunner":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magMG,_magMG,_magMG,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepMG,_ruck,_earplugs];
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _magMG,		2] 	call ACE_fnc_PackMagazine;
	};
		case 	"TypeGrenadier":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_gr,_gr,_smoke,_smoke,
												_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_GL,_ruck,_earplugs];
		[ _unit, _magAR_t,		4] 	call ACE_fnc_PackMagazine;
		[ _unit, _magAR,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magGL,		8]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
		case 	"TypeATSpecialist":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,
												_magAR_t,_magAR_t,_magAR_t,_magAR_t,
												_magAT_HEAT,_magAT_HEAT,_magAT_HEAT,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepAT,_earplugs];
	};
		case 	"TypeSniper":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,_magSVD,
												_smoke,_gr,
												_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,_magSMG,
												_bandage,_bandage,
												_morphine,_morphine,
												_epine,_epine
											];
		{ _unit addWeapon _x }		forEach	[_wepSVD,_wepSMG,_ruck,_earplugs];
		[ _unit, _magSVD,		6] 	call ACE_fnc_PackMagazine;
		[ _unit, _gr,			2] 	call ACE_fnc_PackMagazine;
		[ _unit, _smoke,		2] 	call ACE_fnc_PackMagazine;
		[ _unit, _magSMG,		8]	call ACE_fnc_PackMagazine;
		[ _unit, _medkit,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _bandage,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _morphine,		4]	call ACE_fnc_PackMagazine;
		[ _unit, _epine,		4]	call ACE_fnc_PackMagazine;
	};
	
};

//	プライマリィウェポンを選択させる
_primaryWeapon = primaryWeapon _unit;
_unit selectWeapon _primaryWeapon;

//	火器の使用モードが複数ある場合以下の変なコードが必要らしい
_muzzles = getArray( configFile >> "cfgWeapons" >> _primaryWeapon >> "muzzles" );
_unit selectWeapon ( _muzzles select 0 );
