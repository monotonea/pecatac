waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　ショッピングセンターに居る敵を掃討せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍に<br/>
　よる侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
　敵軍の攻撃は今も続いているが、短期決戦で全島を占領<br/>
　しようとした敵の目論みは自衛隊の活躍により阻止され、<br/>
　前線は一進一退の戦況となっている。<br/>
<br/>
目標：<br/>
　我々は敵部隊が占拠している<marker name='Target_mark1'>春琴町</marker>を奪還すべく行動しており、<br/>
　作戦は概ね順調に推移している。<br/>
　この辺りに展開していた敵主力は航空自衛隊による空爆で相当な<br/>
　打撃を受けている模様で、活動が急激に不活発になっている。<br/>
　諸君らはこの好機に<marker name='Target_mark1'>春琴町</marker>へと突入し、敵部隊を退却に追い込め。<br/>
　本作戦は<marker name='Target_mark1'>目標地点</marker>に敵がおらず、かつ目標に自衛隊員が１名以上
　居る状態になった場合、成功したとみなす。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　攻撃目標付近では歩兵戦闘車や装甲車などの装備が<br/>
　確認されていたが、これらは空爆によってかなりの数が<br/>
　破壊されており、既に一両も保有していないか、保有して
　いてもごく少数に止まると見られている。<br/>
<br/>
　攻撃目標およびその近辺には少なくとも３０名程度の敵がいる<br/>
　はずである。　また、敵は８０ミリ程度の口径の迫撃砲の支援を<br/>
　受けていると見られている。<br/>
<br/>
友軍戦力：<br/>
　<marker name='marker_PL'>貴官ら</marker>の部隊の戦力は以下の通り。<br/>
　　・普通科隊員　１個班（１斑８名）<br/>
<br/>
　貴官とともに戦う部隊は以下の通り。<br/>
　　普通科 <marker name='marker_F2'>第２班</marker><br/>
　　普通科 <marker name='marker_F3'>第３班</marker><br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["春琴町中心部にある<marker name='Target_mark1'>ショッピングセンター</marker>に居座る敵を撃滅せよ。<br/>
ラジオコール０－０－１で第２班および第３班に支援を要請する事ができる。<br/>
","第１班(プレイヤー達)の目標","Task1"];

FR1 = player createSimpleTask["Friend01"]; 
FR1 setSimpleTaskDescription["第１班よりラジオコール０－０－１が発信され次第、<marker name='AttackMarker_2'>春琴町西部</marker>へと浸透し、
第１班のショッピングセンター突入を支援する。　特別な事情がない限り<br/>
ショッピングセンターへは突入しない。<br/>
","第２班(AI)の目標","FR1"];

FR2 = player createSimpleTask["Friend02"]; 
FR2 setSimpleTaskDescription["第１班よりラジオコール０－０－１が発信され次第、<marker name='AttackMarker_3'>春琴町南部</marker>へと浸透し、
第１班のショッピングセンター突入を支援する。　特別な事情がない限り<br/>
ショッピングセンターへは突入しない。<br/>
","第３班(AI)の目標","FR2"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["衛生要員が戦死した場合、作戦は失敗したとみなす。<br/>
<br/>
以下、ゲーム内の医療設定<br/>
ACE Medical system = Advance wounds.<br/>
PAK = No.<br/>
Surgical kit = Medic only.<br/>
Remove Surgical kit = Yes.<br/>
location Surgical kit = Anywhere.<br/>
Condition Surgical kit = Anytime.<br/>
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