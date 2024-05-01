waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　町を奪還せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍に<br/>
　よる侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
　敵軍の攻撃は今も続いているが、短期決戦で全島を占領<br/>
　しようとした敵の目論みは自衛隊の活躍により阻止され、<br/>
　前線は一進一退の戦況となっている。
<br/>
目標：<br/>
　<marker name='Target_mark1'>子友町</marker>へ突入し、駐留する敵部隊を撃滅、もしくは<br/>
　退却に追い込む事。　本作戦は<marker name='Target_mark1'>子友町</marker>に存在する<br/>
　全抵抗が排除された場合、成功したとみなす。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　しかし、目標付近の敵部隊に対しては航空自衛隊の空爆が<br/>
　成功しており、装甲戦力及び重火器は殆ど全て撃滅済み<br/>
　である。　現在<marker name='Target_mark1'>子友町</marker>付近で戦闘可能な敵は、歩兵一個<br/>
　中隊程度と推定されている。<br/>
<br/>
友軍戦力：<br/>
　<marker name='marker_PL'>貴官ら</marker>の部隊の戦力は以下の通り。<br/>
　　普通科　第１小隊<br/>
　　・小隊本部　４名<br/>
　　・普通科隊員　３個班（１斑８名）<br/>
　　・１／２ｔトラック　１両<br/>
　　・高機動車　３両（各１発ずつ軽MATを搭載）<br/>
<br/>
　貴官とともに戦う部隊は以下の通り。<br/>
　　普通科 <marker name='marker_F2'>第２小隊</marker><br/>
　　普通科 <marker name='marker_F3'>第３小隊</marker><br/>
　　<marker name='marker_FM'>８１ミリ迫撃砲</marker>　３門<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["<marker name='Target_mark1'>子友町</marker>へ突入し、町の敵を一掃する。","第１小隊(プレイヤー達)の目標","Task1"];

FR1 = player createSimpleTask["Friend01"]; 
FR1 setSimpleTaskDescription["第１小隊より無線連絡（ラジオコール０-０-１）が入り次第、<br/>
<marker name='Target_mark0'>旧日本軍高射砲台跡</marker>の方面より子友町を攻撃。<br/>
<marker name='Target_mark1'>町</marker>へは突入せず、側面援護と敵増援阻止に徹する。<br/>
","第２小隊(AI)の目標","FR1"];

FR2 = player createSimpleTask["Friend02"]; 
FR2 setSimpleTaskDescription["<marker name='marker_F2'>第２小隊</marker>の側面を援護しつつ予備戦力として控える。
状況によっては<marker name='Target_mark1'>子友町</marker>へ突入。<br/>
状況によっては退却する敵を追撃。<br/>
状況によっては第１、第２小隊の退却を援護。<br/>
","第３小隊(AI)の目標","FR2"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["第１小隊の指揮官が戦死した場合、作戦は中止とする。","注意事項","Caution"];

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