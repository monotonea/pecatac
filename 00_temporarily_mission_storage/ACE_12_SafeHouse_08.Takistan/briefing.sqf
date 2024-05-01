waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------
player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　武装集団のセーフハウスを強襲せよ。 <br/>
<br/>
状況：<br/>
　暴虐と圧制で知られたタキスタン旧政権は解体され<br/>
　新政府がこの国を統治する事となった。<br/>
　しかし、新政府の体制に不満を抱く武装勢力が各地で<br/>
　テロ活動を行っており、新政府とアメリカ軍はこれらと<br/>
　戦う日々を送っている。<br/>
<br/>
目標：<br/>
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標014-034</marker>に存在する<br/>
　集合住宅の一室は武装勢力のセーフハウスである事が<br/>
　判明した。　諸君らはここへ突入し、全抵抗を排除、<br/>
　証拠物品を収集した後、撤収せよ。　<br/>
　本作戦は目標までの距離が長く、ヘリコプター以外での<br/>
　侵攻は不可能である。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　敵は２名の戦闘員が常駐していると伝えられているが、<br/>
　その他に１０:４０頃、幹部２名と、護衛の戦闘員２名が<br/>
　入室したとの情報がある。<br/>
　建物は２部屋ある集合住宅で、西側の部屋が目標である。<br/>
<br/>
　目標付近の山中では敵戦闘員が野宿生活をしていると<br/>
　言われているが、偵察機からは確認できなかった。<br/>
　騒ぎが起きれば駆けつけてくる可能性はあるが、その人数は<br/>
　４人～１０人程度と予想されている。<br/>
<br/>
支援:<br/>
　目標の隣の部屋は武装勢力とは全く無関係の一般市民の<br/>
　部屋だ。　攻撃目標とは壁一枚を隔てているだけであり、<br/>
　戦闘になった場合危険である。　そのため、この部屋の住人に<br/>
　情報部が電話をかけて退避を勧告する用意ができている。<br/>
　必要であればラジオコール０―０―１で情報部へ連絡せよ。<br/>
<img image='Target.jpg' width='320' height='270'/><br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大8名)<br/>
　　UH-60 1機<br/>
"]]; 
//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["地図上の<marker name='Target1_mark'>赤色斜線で示されている範囲</marker>に存在する全抵抗を排除せよ。","強襲","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["目標１を達成後、最低一名の隊員を１分間<marker name='Target2_mark'>範囲内</marker>に留まらせる事。","証拠物品収集","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["全隊員は<marker name='EX_mark'>基地</marker>に集結せよ。","離脱","extraction"];

CO1 = player createSimpleTask["Caution1"]; 
CO1 setSimpleTaskDescription["武器を持たない一般市民を殺害してはならない。　３人以上の民間人が死亡した場合、作戦は中止とする。","注意事項1","Caution1"];

CO2 = player createSimpleTask["Caution2"]; 
CO2 setSimpleTaskDescription["<marker name='Target1_mark'>目標の建物等</marker>の証拠物品を爆撃で破壊しないこと。","注意事項2","Caution2"];


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