waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　弾薬庫を破壊せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍による<br/>
　侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
　敵軍の攻撃は激しく、連中は既に島の一部を占領して部隊を<br/>
　駐留させている。<br/>
<br/>
目標：<br/>
　作戦座標<marker name='Target_mark1'>081-130</marker>には自衛隊の武器庫が存在する。<br/>
　この武器庫は某国との戦いが始まる以前に密かに作られた物で、<br/>
　その存在は防衛省や協力してくれた民間企業の一部の職員など、<br/>
　ごく限られた人々しか知らず、今までずっと秘密にされてきた。<br/>
　この武器庫の周辺は侵攻を受けた際、迅速に敵に制圧されてしまい<br/>
　庫内の武器が活用されることも、破壊されることも無く、また、敵に<br/>
　発見されることも無く今日に至っている。<br/>
　諸君らの目標は敵がこの武器庫の存在を知る前に、これを完全に<br/>
　破壊することである。<br/>
　
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　目標周辺は完全に敵の支配地域であり、多数の敵が確認されている。<br/>
　敵歩兵は１個中隊程度駐留していると推定されており、その他に<br/>
　<marker name='marker_AA'>地対空ミサイル部隊</marker>や、<marker name='marker_Radar'>対空監視部隊</marker>、<marker name='marker_Com'>通信部隊</marker>等が<br/>
　配備されている模様だ。<br/>
　その他に<marker name='marker_E1'>E1</marker>、<marker name='marker_E2'>E2</marker>、<marker name='marker_E3'>E3</marker>に、それぞれ<br/>
　20名程度の敵歩兵が駐留していると言われている。
　ただ、最近この辺の敵は夜になると歩哨を数名立て、それ以外の<br/>
　兵士は寝ているらしい情報も入っている。<br/>
<br/>
友軍戦力：<br/>
　<marker name='marker_PL'>貴官ら</marker>の部隊の戦力は以下の通り。<br/>
　　・特殊作戦隊員　１個班（１斑１０名）<br/>
　　・ゴムボート　2艘<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["ゴムボートに乗って敵地へ潜入し、<marker name='Target_mark1'>081-130</marker>にある武器箱を全部破壊せよ。<br/>
目標には大量の爆薬が集積されているので、爆薬は携行しなくてもよい。<br/>
ただし、武器庫の入り口は金網で覆われているため、ワイヤーカッターを携行<br/>
する事が望ましい。<br/>
武器庫の入り口には「危険、崩落の恐れあり」と書かれた立て札が立っている。<br/>
目印になるはずだ。<br/>
","武器庫を破壊","Task1"];


T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["作戦の西進限界は統制線<marker name='marker_WL'>070</marker>、東進限界は統制線<marker name='marker_EL'>090</marker>とする。<br/>
侵攻縦深は海岸線より1kmを目安に行動せよ。<br/>
(統制線を超えてもゲームオーバーにはなりません。)<br/>
","注意事項","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["全隊員は<marker name='EX_mark'>脱出地点</marker>に集結せよ。","離脱","extraction"];

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