//////////////////////////////////////////////////////////////////
//	LAND_action.sqf		Type90 worte
//	アクションメニューで実行されるスクリプトファイル
//////////////////////////////////////////////////////////////////

//	addActionで実行されるsqfはコマンドを実行したクライアント上でしか実行されないため、
//	publicVariableでクライアント側からサーバを含む全てのユーザに値を送信する


LAND_bAction = true;
publicVariable "LAND_bAction";

LAND_uActionPlayer = player;
publicVariable "LAND_uActionPlayer";
