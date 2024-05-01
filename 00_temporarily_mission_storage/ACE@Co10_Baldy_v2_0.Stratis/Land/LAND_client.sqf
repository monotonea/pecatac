//////////////////////////////////////////////////////////////////
//	LAND_client.sqf		Type90 worte
//	ヘリの降着と基地への帰還をさせるスクリプトファイル クライアント側処理
//////////////////////////////////////////////////////////////////


//	引数	[ ヘリ名 ]
_unit		= _this select 0;
																																				//[West,"HQ"] sideChat "Client:start";
//	プレイヤーがヘリに乗車するまで待機
waitUntil { player in crew _unit };
																																				//[West,"HQ"] sideChat "Client:getIn";
_hAction		= 0;
_hActionMark1	= 0;
_hActionMark2	= 0;
_bActionCreated = false;

while { !LAND_bAction && !_bActionCreated } do {
	sleep 1;
	//	(プレイヤーがリーダー＆アクションメニューがまだ作られていない)場合にアクションメニューを設定する
	//	リーダが死んで別のプレイヤーに移った場合に対処
	//	1秒に1回判定するので乗車中にリーダが渡されてもOK
	if ( leader group player == player && !_bActionCreated) then {
		_hActionMark1	= _unit addAction [ "------", "", [], 6, false, true ];
		_hAction		= _unit addAction [ "Order chopper to take off", "Land\LAND_Action.sqf", [], 6, false, true ];
		_hActionMark2	= _unit addAction [ "------", "", [], 6, false, true ];
		_bActionCreated = true;
																																				//[West,"HQ"] sideChat "Client:Create action menu";
	};
};
																																				//[West,"HQ"] sideChat "Client:end roop";
//	アクションメニューが押されるまで待機
waitUntil { LAND_bAction };

//	アクションメニューを削除
if (_bActionCreated) then {
	_unit removeAction _hAction;
	_unit removeAction _hActionMark1;
	_unit removeAction _hActionMark2;
																																				//[West,"HQ"] sideChat "Client:Delete action menu";
};

																																				//[West,"HQ"] sideChat "Client:EOF";
