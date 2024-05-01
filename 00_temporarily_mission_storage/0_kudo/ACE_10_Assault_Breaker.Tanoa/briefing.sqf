waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　敵部隊の攻撃を撃退せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍に<br/>
　よる侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
　敵軍の攻撃は今も続いているが、短期決戦で全島を占領<br/>
　しようとした敵の目論みは自衛隊の活躍により阻止され、<br/>
　前線は一進一退の戦況となっている。<br/>
<br/>
目標：<br/>
　偵察情報によれば敵軍は間もなく<marker name='Target_mark1'>逢稀町</marker>に対し攻撃行動を<br/>
　開始すると見られている。<br/>
　諸君らはこの攻撃波を粉砕し、敵部隊を退却に追い込め。<br/>
　作戦区域の北限は<marker name='Marker_NL'>統制線Ｎ０８０</marker>とする。<br/>
　本作戦は４５分間<marker name='Target_mark1'>逢稀町</marker>を防衛するか、または<marker name='Marker_WL'>統制線Ｗ１２２</marker>以東に<br/>
　存在する敵全てを撃破した場合、成功したとみなす。<br/>

<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　装甲戦力として歩兵戦闘車が最低でも３両、攻撃に参加<br/>
　してくると予想されているが、その他にも重装備を保有している<br/>
　可能性は高い。<br/>
　敵歩兵は１個中隊程度と推定されている。<br/>
　敵の偵察隊を郊外の<marker name='Target_mark2'>サトウキビ畑</marker>のあたりで
　見たという情報があり、一部の敵は既に行動を開始している模様だ。
　また、敵は８０ミリ程度の口径の迫撃砲の支援を受けていると<br/>
　見られている。<br/>
<br/>
友軍戦力：<br/>
　<marker name='marker_PL'>貴官ら</marker>の部隊の戦力は以下の通り。<br/>
　　普通科　第１小隊<br/>
　　・小隊本部　４名<br/>
　　・偵察／襲撃班　１組（２名）<br/>
　　・普通科隊員　２個班（１斑８名）<br/>
<br/>
　　・偵察用バイク　１両<br/>
　　・１／２ｔトラック　２両<br/>
　　・高機動車　２両（各２発ずつ軽MATを搭載）<br/>
<br/>
　貴官とともに戦う部隊は以下の通り。<br/>
　　普通科 <marker name='marker_F2'>第２小隊</marker><br/>
　　普通科 <marker name='marker_F3'>第３小隊</marker><br/>
　　<marker name='marker_FM'>８１ミリ迫撃砲</marker>　３門<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["以下のどちらかを達成せよ。<br/>
・作戦開始から４５分が経過した時点で<marker name='Target_mark1'>逢稀町</marker>の中に敵が一人も居ないこと。<br/>
　（一時的に侵入されるのは問題ない）<br/>
・<marker name='Marker_WL'>統制線Ｗ１２２</marker>より東側の敵を全て撃滅する。<br/>
","第１小隊(プレイヤー達)の目標","Task1"];


FR1 = player createSimpleTask["Friend01"]; 
FR1 setSimpleTaskDescription["<marker name='marker_F2'>逢稀町南西部</marker>で防衛に当たり、山中に浸透してくる<br/>
敵歩兵に備える。　基本的に<marker name='marker_F2'>この場所</marker>から動かない。<br/>
","第２小隊(AI)の目標","FR1"];

FR2 = player createSimpleTask["Friend02"]; 
FR2 setSimpleTaskDescription["<marker name='marker_F3'>伐採所</marker>を拠点として山中で防衛に当たり、<br/>
浸透してくる敵歩兵に備える。<br/>
敵が十分に弱体化した場合、山中を巡回して残敵の掃討に当たる。<br/>
","第３小隊(AI)の目標","FR2"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["以下のどちらかに該当した場合、作戦は失敗したとみなす。
　・作戦開始から４５分が経過した時点で<marker name='Target_mark1'>逢稀町</marker>の中に敵が残っている。<br/>
　・第１小隊の指揮官が戦死した場合。<br/>
","注意事項","Caution"];

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