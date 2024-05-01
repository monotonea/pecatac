//	スクリプトをサーバーだけで実行する
if(not isServer) exitWith{};

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };