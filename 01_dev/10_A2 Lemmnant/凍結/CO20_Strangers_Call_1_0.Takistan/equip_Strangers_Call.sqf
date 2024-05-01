//////////////////////////////////////////////////////////////////
//	equip_Strangers_Call.sqf		Origin and Element Created by Type90
//									Optimized by Monotone
//////////////////////////////////////////////////////////////////

//	タブの文字数を4にすると見やすいよ
//	このスクリプトの場合JIPだと装備が再設定されるよ

//////////////////////////////////////////////////////////////////
//	微妙な感じのマルチプレイに対応したユニット生成待ちスクリプト
//////////////////////////////////////////////////////////////////

//	謎の呪文再び プレイヤーの初期化待ちだとはおもうけど
if (!isServer) then {
	waitUntil { !isNil {player} };
	waitUntil { player == player };
};
//	謎の待機命令 無いと動かない
sleep 0.1;

//	スクリプトへ渡される配列の0番目を取得する
//	例文	equipment = [this,"TypeLead"] execVM "equip_Strangers_Call.sqf";
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
_wepAR		= "SCAR_H_CQC_CCO";
_wepAR_GL	= "SCAR_H_STD_EGLM_Spect";
_wepAR_SD	= "SCAR_H_CQC_CCO_SD";
_wepMG		= "M249_EP1";
_wepSnp		= "M110_NVG_EP1";

_magAR		= "20Rnd_762x51_B_SCAR";
_magAR_SD	= "20Rnd_762x51_SB_SCAR";
_magMG		= "100Rnd_556x45_M249";
_magGL		= "1Rnd_HE_M203";
_magSnp		= "";

_wepAT		= "MAAWS";
_magAT_HEAT	= "MAAWS_HEAT";
_magAT_AP	= "MAAWS_HEDP";

_wepPis		= "M9";
_wepPis_SD	= "M9SD";
_magPis		= "15Rnd_9x19_M9";
_magPis_SD	= "15Rnd_9x19_M9SD";

_wepSMG		= "UZI_EP1";
_magSMG		= "30Rnd_9x19_UZI";

_gr			= "HandGrenade_West";
_smoke		= "SmokeShell";
_sc			= "Pipebomb";
_ruckL		= "US_Assault_Pack_EP1";
_ruckH		= "DE_Backpack_Specops_EP1";

_bandage	= "";
_morphine	= "";
_epine		= "";

_RangeF		= "Binocular_Vector";
_earplugs	= "";
//////////////////////////////////////////////////////////////////
//	役職でスイッチ
switch (_unitType) do {
		case 	"TypeLeader":{
		//	クラス名が一致したものだけリムーブウェポン
		removeAllWeapons _unit;
		//	マガジン類の装備
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,
												_smoke,_smoke,
												_magPis,_magPis,_magPis,_magPis,_magPis,_magPis,_magPis,_magPis
											];
		//	武器類の装備
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepPis,_RangeF,"NVGoggles"];
		//ヤジリ用バックパックの装備
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,6];
		(unitBackpack _unit) addMagazineCargo [_smoke,2];
	};
		case 	"TypeMedic":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
	};	
		case 	"TypeSAW":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magMG,_magMG,_magMG,_magMG,
												_gr,_gr,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepMG,"NVGoggles"];
	};
		case 	"TypeSAWa":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,2];
		(unitBackpack _unit) addMagazineCargo [_magMG,3];
	};
		case 	"TypeGR":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,_smoke,_smoke,
												_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL,_magGL
											];
		{ _unit addWeapon _x }		forEach	[_wepAR_GL,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckL;
		clearMagazineCargo unitBackpack _unit;
		clearWeaponCargo unitBackpack _unit;
		(unitBackpack _unit) addMagazineCargo [_magAR,4];
		(unitBackpack _unit) addMagazineCargo [_magGL,4];
	};
		case 	"TypeAT":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_magAT_HEAT,_magAT_HEAT,_magAT_HEAT
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepAT,"NVGoggles"];
	};
		case 	"TypeScout":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_gr,_gr,
												_smoke,_smoke,
												_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD,_magPis_SD
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,_wepPis_SD,_RangeF,"NVGoggles"];
		removeBackpack _unit;
		_unit addBackpack _ruckH;
		clearWeaponCargo unitBackpack _unit;
		clearMagazineCargo unitBackpack _unit;
		(unitBackpack _unit) addWeaponCargo [_wepSnp,1];
		(unitBackpack _unit) addMagazineCargo [_magAR,4];
	};
		case 	"TypeCrew":{
		removeAllWeapons _unit;
		{ _unit addMagazine _x }	forEach	[	_magAR,_magAR,_magAR,_magAR,_magAR,_magAR,
												_smoke,_smoke
											];
		{ _unit addWeapon _x }		forEach	[_wepAR,"NVGoggles"];
	};
		case 	"TypeCargoM2":{
		clearMagazineCargo _unit;
		clearWeaponCargo _unit;
		_unit addMagazineCargo	[_magAR,48];
		_unit addMagazineCargo	[_magAR_SD,24];
		_unit addMagazineCargo	[_magMG,12];
		_unit addMagazineCargo	[_magGL,12];
		_unit addMagazineCargo	[_gr,12];
		_unit addMagazineCargo	[_smoke,12];
	};
};

//	プライマリィウェポンを選択させる
_primaryWeapon = primaryWeapon _unit;
_unit selectWeapon _primaryWeapon;

//	火器の使用モードが複数ある場合以下の変なコードが必要らしい
_muzzles = getArray( configFile >> "cfgWeapons" >> _primaryWeapon >> "muzzles" );
_unit selectWeapon ( _muzzles select 0 );
