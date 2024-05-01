//////////////////////////////////////////////////////////////////
//	LAND_main.sqf		Type90 worte
//	ヘリの降着と基地への帰還をさせるスクリプトファイル
//////////////////////////////////////////////////////////////////


//	引数	[ ヘリ名, 着陸地点のヘリパッド名, 帰還する地点のヘリパッド名 ]
//
//	使用上の注意1:	使用するヘリは1機のみのAIグループのものを使用する事
//
//	使用上の注意2:	LAND_bActionとLAND_uActionPlayerという変数名をグローバル変数として使用する
//					LAND_bActionはアクションメニューのOrder chopper to take offを押すとtrueになる
//					LAND_uActionPlayerにはアクションメニューを実行したプレイヤーユニット名が入る
//
//	使用上の注意3:	1ミッション内で2回以上このスクリプトを呼び出してヘリで移動するテストはしていない
//
//	使用上の注意4:	戻る基地周辺に敵が居た場合着陸するかのテストはしていない


_unit		= _this select 0;

//	リッスンサーバとデディケイテッドでする処理
if (isServer) then {
	LAND_bAction = false;
	publicVariable "LAND_bAction";

	//	サーバ側(AIヘリへの指示)スクリプト実行
	_temp = [_unit, _this select 1, _this select 2]execVM "Land\LAND_server.sqf";
																																				//[West,"HQ"] sideChat "main:exec LAND_server";
};

//	リッスンサーバとクライアント側でする処理
if (!isDedicated) then {
	//	クライアント側(アクションメニュー登録)スクリプト実行
	_temp = [_unit]execVM "Land\LAND_client.sqf";
																																				//[West,"HQ"] sideChat "main:exec LAND_client";
};

//	アクションメニューが押されるまで待機
waitUntil { LAND_bAction };

//	メニューを実行したプレイヤーを表示する寸劇
LAND_uActionPlayer sideChat "Take off, Go!";
driver _unit sideChat "Roger. RTB";
																																				//[West,"HQ"] sideChat "main:EOF";
