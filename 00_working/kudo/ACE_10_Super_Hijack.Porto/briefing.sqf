waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------
player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　武装集団に乗っ取られたオイルタンカーを奪還せよ。 <br/>
<br/>
状況：<br/>
　サーラニ島沖を航海中のオイルタンカーがタキスタン聖戦旅団を<br/>
　名乗る武装勢力に乗っ取られる事件が発生した。<br/>
　被害に遭ったのはパナマ船籍、ペカタック・エネルギーライン社が<br/>
　保有するタンカー「ジャイアント・ストラト号」３２万５千トンで、<br/>
　原油を満載しており、現在も航行中だ。<br/>
<br/>
　犯人グループは到底受け入れられない要求を合衆国に突き付けて<br/>
　おり、従わない場合はこのタンカーを合衆国または「その手先の国」<br/>
　の海岸へ突入させ、周辺海域を原油で汚染すると宣言している。<br/>
<br/>
　襲撃犯は１４名、船の乗組員は２３名と判明しており、乗組員のうち<br/>
　２２名は人質として船橋、および機関室に監禁されている模様だ。　<br/>
　残る１名は拘束されず船内を逃げ回っているようだが、彼がどこに<br/>
　居るのかはよく判らない。<br/>
<br/>
目標：<br/>
　ヘリコプターでタンカーへ乗り込み、乗っ取り犯１４名を全員射殺せよ。<br/>
　人質は１人も死なせてはならない。<br/>
　また、船内で爆発物の使用は禁止とする。<br/>
<br/>
<img image='tanker_02.jpg' width='396' height='260'/><br/>
<img image='tanker_01.jpg' width='396' height='260'/><br/>
<br/>
 なお、タンカーは現在舳先を真北に向けて航行している。<br/>
<br/>
予想される敵戦力：<br/>
　敵の人数は１４名と判明している。　それより多い事も無いし<br/>
　少ない事も無い。　殆どの者が自動小銃で武装しているようだが、<br/>
　ロケットランチャーらしき物を持った者が１名、船橋の屋上に<br/>
　居るのがUAVから確認されている。<br/>
　本作戦は夜間に行われるが、敵は暗視装置の類を一切<br/>
　保有していないと見られている。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大10名)<br/>
　　CH-53　または MH-6 どちらか1機<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["<marker name='Target1_mark'>タンカー</marker>内に存在する全抵抗を排除せよ。","強襲","Task1"];

CO1 = player createSimpleTask["Caution1"]; 
CO1 setSimpleTaskDescription["武器を持たない一般市民を殺害してはならない。　民間人が１人でも死亡した場合、作戦は中止とする。","注意事項","Caution1"];


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