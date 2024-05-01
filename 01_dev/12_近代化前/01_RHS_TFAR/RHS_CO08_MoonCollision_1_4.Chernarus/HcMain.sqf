//initListが候補者全員で、liveListは生き残りリーダーのリスト。
//Dedicated Server環境でどう動くかわからないので基本グローバル関数にした

initList = 
[
	(units ft0) select 0,
	(units ft1) select 0,
	(units ft0) select 1,
	(units ft1) select 1,
	(units ft0) select 2,
	(units ft1) select 2,
	(units ft0) select 3,
	(units ft1) select 3
];

liveList = [];

//subListは指揮下に入るグループのリスト
//ここに載せるだけじゃなくてエディタ上でもモジュールを設定してシンクロさせる必要がある

sublist = [AAVP,sq2];
//こっからループ
while{true}do
	{	
		//initlist登録。ここで順列崩れないかちょっと心配
		//まずアレイを空にしてから
		liveList = [];
		
		//生きてて、リーダーで、プレイヤーなinitListの人をliveListに載せる。
		while {(count liveList) == 0}
		do
			{
				{
					if (
						(alive _x) and
						(_x==leader group _x) and
						(isPlayer _x)
						) 
					then {liveList set [count liveList,_x]}
				}forEach initList;
			};
		//なるべき人が見つかったら、それをコマンダーに仕立て上げる
		waitUntil {not isNull (liveList select 0)};

		cmdr = liveList select 0;
		{cmdr hcSetGroup [_x]}forEach subList;
		hintSilent format ["%1 is new commander.",cmdr];

		//コマンダーが死亡、AIになった、リーダーではなくなった場合は次の適格者を探す
		waitUntil{
					(not alive cmdr) or 
					(not (cmdr ==leader group cmdr)) or
					(not isPlayer cmdr)
					};
					
		//まずは前任者の資格を剥奪し、subordinatesの活動を中止させる
		hcRemoveAllGroups cmdr;
		{deleteWaypoint [_x,currentWaypoint _x]}forEach sublist;
	};