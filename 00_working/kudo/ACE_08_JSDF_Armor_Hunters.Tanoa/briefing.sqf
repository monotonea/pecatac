waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
目標：<br/>
　敵部隊の攻勢を撃退せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍による<br/>
　侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
<br/>
任務：<br/>
　複数の情報源により、敵は今から３０分以内に<marker name='Target_mark1'>播殻楽町</marker>から西へ向けて<br/>
　攻勢を開始する可能性が高いと見られている。<br/>
　敵の戦力は概ね歩兵１個小隊程度と予想されているが、確証度の高い<br/>
　情報として２両のＢＭＰ－３が攻撃に参加すると伝えられている。<br/>
　対する我々は２個普通科小隊が防衛配置に就いているものの、<br/>
　対戦車装備が不足しており、ＢＭＰ－３が来襲すれば苦戦は免れない<br/>
　状況にある。<br/>
<br/>
　諸君らは各種対戦車装備を用い、敵ＢＭＰ－３を全車撃滅せよ。<br/>
　ＢＭＰ撃滅の後は普通科第１、第２小隊と協力し、敵歩兵を統制線<marker name='marker_EL'>Ｅ－１０２</marker>
　以東へと撃退せよ。
　作戦の北限は統制線<marker name='marker_NL'>Ｎ－１１０</marker>、南限は<marker name='marker_SL'>Ｓ－０９０</marker>、<br/>
　最大侵攻縦深は<marker name='marker_PL'>現在地</marker>から東へ１０００ｍを目安に行動すべし。<br/>
　本作戦は敵ＢＭＰ－３が全車戦闘不能となり、かつ<marker name='marker_EL'>Ｅ－１０２</marker>以西に<br/>
　敵が一人も存在しない場合、達成したとみなす。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　敵の攻撃波は３～４個分隊の歩兵とみられており、ほぼ確実に<br/>
　２両のＢＭＰ－３を伴っていると予想されている。<br/>
　また、これら部隊は小規模～中程度の迫撃砲部隊による支援を<br/>
　受けていると見られている。<br/>
<br/>
友軍戦力：<br/>
　諸君らの部隊の戦力は以下の通り。<br/>
　　・対戦車班（２斑４名）<br/>
　　・軽装甲機動車　２両<br/>
　　・オートバイ　１両<br/>
　　・１／２ｔトラック　１両<br/>
<br/>
　諸君らと共に戦う部隊は以下の通り。<br/>
　　・普通科部隊　２個小隊（基本的に初期配置の場所からは動かない）<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["来襲するＢＭＰ－３を全て破壊せよ。<br/>
","ＢＭＰを全て破壊","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["統制線<marker name='marker_EL'>Ｅ－１０２</marker>より西側にいる敵を全て撃破せよ。<br/>
","敵歩兵を撃退","Task2"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["以下のどちらかに該当した場合、作戦は失敗したとみなす。<br/>
　・<marker name='marker_PL1'>普通科第１小隊</marker>が壊滅的打撃を受けた場合。<br/>
　・<marker name='marker_PL2'>普通科第２小隊</marker>が壊滅的打撃を受けた場合。<br/>
<br/>
以下、ゲーム内の医療設定<br/>
ACE Medical system = Advance wounds.<br/>
PAK = No.<br/>
Surgical kit = Medic only.<br/>
Remove Surgical kit = Yes.<br/>
location Surgical kit = Anywhere.<br/>
Condition Surgical kit = Anytime.<br/>
","注意事項","Caution"];

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