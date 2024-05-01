waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------
player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　武装集団のセーフハウスを強襲せよ。 <br/>
<br/>
状況：<br/>
　テロリストはたとえ便所の中に隠れたとしても追いかけて<br/>
　行って息の根を止めてやる。<br/>
<br/>
目標：<br/>
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標068-126</marker>に存在する<br/>
　建物は武装勢力のセーフハウスである事が判明した。<br/>
　この建物にはわが国に対して爆弾テロを目論む危険人物達が<br/>
　潜んでおり、爆弾の製造や今後のテロ作戦の会議などを<br/>
　行っている模様だ。<br/>
　諸君らはここへ突入し、存在する全ての敵を射殺せよ。　<br/>
　敵は１人たりとも取り逃がしてはならない。　逃亡を<br/>
　果たした敵が居た場合、本作戦は失敗したとみなす。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　最低２名のメンバーが常駐していると伝えられており、<br/>
　今日はその他に６名がこの建物を訪れている模様だ。<br/>
　この建物の以外、周辺に敵は確認されていない。<br/>
　戦闘が開始された後で集まってくる敵は全く居ないか、<br/>
　居てもごく少数だと予想されている。<br/>
<br/>
支援：<br/>
　踏切近くの工場横に、何気なく<marker name='Truck_mark'>青い幌のトラック</marker>が止まっている。<br/>
　このトラックの中にはフョードル分隊の隊員達が待機している。<br/>
　ラジオコール０―０―１で下車し、目標の屋敷周辺に展開する。<br/>
　必要であれば利用せよ。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大１０名)<br/>
　　Tiger装甲車(武装なし)　２両<br/>
"]]; 
//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["<marker name='Target1_mark'>斜線で示されている範囲</marker>に存在する敵を全員射殺せよ。<br/>
逃走を図った敵がいた場合、追跡し必ず仕留めよ。","殲滅","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["目標１を達成後、全隊員は<marker name='Target2_mark'>目標の建物</marker>に集合し、遺留品等の調査に当たれ。","調査","Task2"];

CO1 = player createSimpleTask["Caution1"]; 
CO1 setSimpleTaskDescription["以下のいずれかに該当した場合、作戦は失敗したとみなす。<br/>
1.３人以上の民間人が死亡した場合。
2.目標の建物にある証拠物品を破壊してしまった場合。
3.町の外に出た敵が(一人でも)いた場合。
","注意事項","Caution1"];

["Task1Current", ["Clear Enemy Sights"]] call BIS_fnc_showNotification;
["Task1Current"] call BIS_fnc_showNotification;
player setCurrentTask T1;
/*
supreq synchronizeObjectsRemove  (synchronizedObjects supreq);
supreq synchronizeObjectsAdd [(leader ft0),supHelo];
nul=[]spawn{while{true}do{
						currentFtNum=count units ft0;
						waitUntil{not(currentFtNum==count units ft0)};
						supreq synchronizeObjectsRemove(synchronizedObjects supreq);
						supreq synchronizeObjectsAdd [(leader ft0),supHelo];
						sleep 15};
			supreq synchronizeObjectsRemove(synchronizedObjects supreq);
			supreq synchronizeObjectsAdd [(leader ft0),supHelo];};
*/;