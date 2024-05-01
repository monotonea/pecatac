//生成回数カウンターを定義する
_spawncount = 0;

//ユニットが発生する場所のタテヨコ座標を定義。
_spawnPointX = position centerLogic select 0;
_spawnPointY = position centerLogic select 1;  

//ロシア人を入れておくアレイを定義。このアレイの中にリストアップされたロシア人どもを後でdeleteするぞ
//このアレイはこのスクリプト以外でも参照されるから、_は名前の頭につけない。(グローバル関数ってやつだ)

//カウンターが11回まわったらこのwhileループはおしまいだ
While {_spawnCount <11}
	do
		{
		//まずユニットを生成するよ。
		_newRussian = "RU_Soldier" createVehicle [_spawnPointX,_spawnPointY];
		
		//生成されたロシア人をアレイにブチ込む。
		ruskies set [count ruskies,_newRussian];
		
		//カウンターを1回まわそう
		_spawnCount = _spawnCount +1;
		
		//発生する場所もちょっとずらしてやろう。念のため。
		_spawnPointX = _spawnPointX + 1;
		_spawnPointY = _spawnPointY + 1;
		
		};