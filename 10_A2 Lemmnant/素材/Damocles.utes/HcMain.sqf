//initListが候補者全員で、liveListは生き残りリーダーのリスト。
//Dedicated Server環境でどう動くかわからないので基本グローバル関数にした
//initListを一人ずつ指定して、それぞれのユニットHcInit.sqfをexecVMさせてやれば継承順位も好きなように決められる。でも今回はやらない。

initList = 
(units ft0)+
(units ft1)
;

liveList = [];

//subListは指揮下に入るグループのリスト
//ここに載せるだけじゃなくてエディタ上でもモジュールを設定してシンクロさせる必要がある

sublist = [AAVP];

//こっからループ
while{true}do
	{	
		//initlist登録。ここで順列崩れないかちょっと心配
		
		//まず空にしてから
		liveList = [];
		
		//生きてて、リーダーやってるinitListの人をliveListに載せる。
		{	
			if ((alive _x) and(_x==leader group _x)and (isPlayer _x)) 
			then {liveList set [count liveList,_x]}
		}forEach initList;
		
		waitUntil {not isNull (liveList select 0)};

		cmdr = liveList select 0;
		{cmdr hcSetGroup [_x]}forEach subList;
		hintSilent format ["%1 is new commander.",cmdr];

		//死ぬまで待とう
		waitUntil{not alive cmdr};
		waituntil{not (cmdr ==leader group cmdr)};
		hcRemoveAllGroups cmdr;
		
		//まずはsubordinatesの活動を中止させる
		{deleteWaypoint [_x,currentWaypoint _x]}forEach sublist;
	};