waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　<marker name='Target22_mark'>目標地点パーチ01</marker>へと友軍の機械化歩兵を進出させよ。 <br/>
<br/>
状況：<br/>
　現在サーラニ共和国では反乱が発生しており、陸空軍の一部<br/>
　部隊が本格的な戦力を保持したまま勝手に行動している。<br/>
　国王は叛軍に対し投降を呼びかけているが、連中は自分達の<br/>
　要求が受け入れられない限り、行動を続けると言っている。<br/>
　叛軍に対する外部からの様々な介入も見え始めており、事態は<br/>
　長期化の様相を呈しつつある。<br/>
　この状況に国王は、近衛機甲大隊に出動を命じた。<br/>
<br/>
目標：<br/>
　反乱軍が制圧した<marker name='Target1_mark'>カヨ市</marker>を奪還するため、友軍の機械化歩兵部隊を<br/>
　<marker name='Target22_mark'>町郊外</marker>へと進出させよ。<br/>
　作戦の進出北限は統制線<marker name='N_mark'>N129</marker>、西限は<marker name='W_mark'>W080</marker>とする。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　この地域には反乱軍の三大戦力のうち一つ、第二機甲大隊の<br/>
　主戦力が配置されているはずだ。　連中は予備戦力としてこの<br/>
　あたりに待機しているようだが、我々が<marker name='Target1_mark'>カヨ</marker>に近づけば必ず動いて<br/>
　くるはずだ。<br/>
<br/>
　第二機甲大隊の主戦力はT-72戦車であり、我々と同じ車両<br/>
　である。　同士撃ちの危険を回避するため、我々は緑色を基調<br/>
　とした迷彩の車両、および戦闘服を使用する。<br/>
　敵側は薄黄色(砂漠迷彩)の車両、カーキ色の戦闘服を使用して<br/>
　いるはずである。<br/>
<br/>
　敵は10両程度の戦車を保有していると見られており、その部隊は<br/>
　２個小隊程度の自動車化歩兵で増強されている可能性が高い。<br/>
　これら部隊は小規模～中規模の迫撃砲部隊に支援されている模様だ。<br/>
　敵固定翼機は確認されていない。<br/>
　回転翼機は目撃情報があるが、敵は本格的な戦闘用ヘリコプターは<br/>
　保有していないはずだ。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　T-72　主力戦車　4両<br/>
　　BRDM-2　対戦車ミサイル車　2両<br/>
　　BRDM-2　指揮装甲車　1両<br/>
<br/>
　貴官らを支援する戦力は以下の通り。<br/>
　　M113　兵員輸送車 3両(総指揮官の指示で移動可能)<br/>
　　機械化歩兵　1個小隊(M113に搭乗しており、下車は不可)<br/>
　　TOW 対戦車ミサイル班(固定)　2個<br/>
　　FIM-92 地対空ミサイル班(固定)　2個<br/>
<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["戦闘区域内に存在する敵装甲戦力を50％以上撃滅せよ。","敵戦力撃破","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["最低でも１両のM113を<marker name='Target22_mark'>目標地点パーチ01</marker>に到着させる事。","機械化歩兵進出","Task2"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["以下のどれかに該当した場合、作戦は失敗とする。<br/>
　・司令官が戦死した場合<br/>
　・全てのM113が撃破された場合<br/>
　・統制線を越えて行動した者が居た場合<br/>
","敗北条件","Caution"];


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