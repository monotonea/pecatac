waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
作戦時間：1630<br/>
<br/>
任務：<br/>
　武装集団のセーフハウスを強襲せよ。 <br/>
<br/>
状況：<br/>
　暴虐と圧制で知られたタキスタン旧政権は解体され<br/>
　新政府がこの国を統治する事となった。<br/>
　しかし、新政府の体制に不満を抱く武装勢力が各地で<br/>
　テロ活動を行っており、新政府とアメリカ軍はこれらと戦う<br/>
　日々を送っている。<br/>
<br/>
目標：<br/>
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標037-103</marker>に存在する<br/>
　民家の一廓は武装勢力のセーフハウスとして利用されて<br/>
　いる可能性が高いと見られている。　諸君らはここへ突入し、<br/>
　全抵抗を排除、証拠物品を収集した後、撤収せよ。　<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　敵は4～5名の戦闘員と最低1名の組織幹部が常駐して<br/>
　いると伝えられている。<br/>
　その他に敵戦闘員が一般市民に紛れて付近の民家で<br/>
　生活しており、戦闘が開始されれば武器を手にして<br/>
　現場に駆けつけてくると予想されている。<br/>
　その人数は不明瞭だが、情報部によれば最低でも<br/>
　4名、多くても10名以下と見られている。<br/>
<br/>
　武装は小火器以外確認されていないが、民間車両を<br/>
　利用して増援の派遣や退却を行う可能性がある。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大8名)<br/>
　　HMMWV　2両<br/>
　　HM-６ 1機<br/>

"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["地図上の<marker name='Target1_mark'>赤色斜線で示されている範囲</marker>に存在する全抵抗を排除せよ。","強襲","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["目標１を達成後、最低一名の隊員を１分間<marker name='Target2_mark'>範囲内</marker>に留まらせる事。","証拠物品収集","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["全隊員は<marker name='EX_mark'>基地</marker>に集結せよ。","離脱","extraction"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["武器を持たない一般市民を殺害してはならない。　３人以上の民間人が死亡した場合、作戦は中止とする。","注意事項","Caution"];


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