//    視程を設定
setviewdistance 3000;
setObjectViewDistance 2500;

//	スクリプトをサーバーだけで実行する
if(not isServer) exitWith{};

//	プレイヤーの同期待ち
waitUntil { !isNil {player} };
waitUntil { player == player };