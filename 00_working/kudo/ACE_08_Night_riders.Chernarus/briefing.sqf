waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　敵が保有する３両のＢＭＰ-３を全て破壊せよ。 <br/>
<br/>
状況：<br/>
　現在わが国は某国軍による侵攻を受けており、自衛隊は上陸してきた<br/>
　敵部隊を日本から叩き出すべく戦いの日々を送っている。　敵の攻撃は<br/>
　激しく、戦闘は一進一退の状況となっている。<br/>
<br/>
目標：<br/>
　本日夕方、<marker name='Target_mark1'>撫篠町</marker>に敵機械化歩兵部隊が進出してきたとの情報が入った。　<br/>
　強力なＢＭＰ-３を３両保有しており、町の近くで補給を行っている模様だ。　<br/>
　補給が完了すれば、すぐにでもこちらへ向けて攻勢を開始するだろう。<br/>
　諸君らは先手を打ってこの敵に攻撃を行い、敵の主戦力であるＢＭＰを撃滅せよ。<br/>
　作戦の西限は統制線<marker name='marker_WL'>Ｗ-０４０</marker>、東限は<marker name='marker_EL'>Ｅ-０７５</marker>、侵攻縦深は３０００ｍを<br/>
　目安に行動せよ。<br/>
　本作戦は敵のＢＭＰ-３が全車戦闘不能となった場合、成功したとみなす。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　目標周辺は完全に敵の支配地域であり、多数の敵が確認されている。<br/>
　敵歩兵は１個中隊程度駐留していると推定されており、その他に<br/>
　偵察装甲車班や、通信部隊等が配備されている模様だ。<br/>
　067-092に展開している<marker name='marker_Radar'>対空監視部隊</marker>には、２両の軽戦車が<br/>
　配備されている事も知られている。<br/>
　また、敵は対戦車ミサイルランチャーを少なくとも２基保有していると<br/>
　言われている。<br/>
<br/>
友軍戦力：<br/>
　諸君らの部隊の戦力は以下の通り。<br/>
　　・９０式戦車　２両（１斑６名）<br/>
　　・偵察／襲撃班（１斑２名）<br/>
　　・軽装甲機動車　１両<br/>
　　・オートバイ　１両<br/>
<br/>
　諸君らと共に戦う部隊は以下の通り。<br/>
　　・普通科部隊　３個小隊（初期配置の場所からは動かない）<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["<marker name='Target_mark1'>撫篠町</marker>付近に居るＢＭＰを３両全て破壊せよ。<br/>
","ＢＭＰを全て破壊","Task1"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["全隊員は<marker name='EX_mark'>出撃地点</marker>に集結せよ。","帰還","extraction"];

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