waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------
player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　武装集団が宿泊中の家を強襲せよ。 <br/>
<br/>
状況：<br/>
　暴虐と圧制で知られたタキスタン旧政権は解体され<br/>
　新政府がこの国を統治する事となった。<br/>
　しかし、新政府の体制に不満を抱く武装勢力が各地で<br/>
　テロ活動を行っており、新政府とアメリカ軍はこれらと<br/>
　戦う日々を送っている。<br/>
<br/>
目標：<br/>
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標067-061</marker>に存在する<br/>
　一軒の民家に武装勢力のメンバーが宿泊している事が<br/>
　判明した。　諸君らはここへ突入し、全抵抗を排除、<br/>
　証拠物品を収集した後、撤収せよ。　<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　敵は自動小銃と軽機関銃で武装した戦闘員９名で、<br/>
　そのうち3名は外で周囲の警戒に当たっていると伝え<br/>
　られている。連中はつい先ほどこの家に現れ、家人に食事と<br/>
　寝床を要求し、明日の朝までこの家に居座るつもりだと言う。<br/>
　目標の家の室内には敵戦闘員の他に住人が少なくとも<br/>
　２名居るはずだ。　彼らはただの民間人であり敵ではない。<br/>
　傷つけない様に注意せよ。<br/>
<br/>
　この家の周辺以外に敵は確認されていない。<br/>
　戦闘が開始された後で集まってくる敵は全く居ないか<br/>
　居てもごく少数だと予想されている。
　本作戦は夜間に行われるが、敵は暗視装置の類を一切<br/>
　保有していないと見られている。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大6名)<br/>
　　HMMWV　2両<br/>
　　ATV 1機<br/>
　　MH-6 1機<br/>
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