waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　武装勢力の支配地域を掃討せよ。 <br/>
<br/>
状況：<br/>
　タキスタン東部で現地の武装勢力が力を付け、広い範囲を<br/>
　支配地域として確立しつつある。<br/>
　連中は現地に自分達の考案した法律を施行し、反対する<br/>
　者に対し追放や処刑といった過激な措置を取っている。<br/>
　事態を重く見たタキスタン軍は、該当地域に武力攻撃を<br/>
　実施することを決定した。<br/>
　現在タキスタン軍は統制線<marker name='S_mark'>060</marker>以北、<marker name='N_mark'>080</marker>以南を自由射撃<br/>
　区域と設定し、外見上14歳以上65歳未満と判断できる<br/>
　男性全てを射殺すると宣言している。<br/>
　これは該当地域へも通達されており、同時に攻撃開始まで<br/>
　72時間の猶予を与えるとも伝えている。<br/>
<br/>
目標：<br/>
　攻撃目標<marker name='Target11_mark'>タンゴ-１</marker>、<marker name='Target21_mark'>タンゴ-２</marker>の二箇所の全抵抗を<br/>
　排除せよ。<br/>
　両目標を制圧した後、タキスタン軍が<marker name='Target21_mark'>タンゴ-２</marker>へ集結した場合<br/>
　作戦は成功したとみなす。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　敵は70名程度の戦闘員からなり、広い範囲に分布していると<br/>
　推測される。<br/>
　連中は以前<marker name='Target21_mark'>タキスタン軍基地</marker>だった施設を制圧しており、<br/>
　そこにあった武器を手中に収めている。　そのため装備は旧式<br/>
　ながらも充実していると見られている。<br/>
<br/>
　基地には対空機関砲を搭載したトラックが2両あった<br/>
　はずだが、偵察機からはその所在が確認できなかった。<br/>
　装甲車両は保有していないはずである。<br/>
　その他、民間車両等を戦闘や移動に使用する可能性が<br/>
　ある。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　アメリカ軍特殊部隊(最大8名)<br/>
　　タキスタン軍歩兵　24名<br/>
　　MRAP(M2)　2両<br/>
　　HMMWV(Mk.19)　2両<br/>
　　トラック　2両<br/>
　　ATV　1両<br/>

"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["攻撃目標<marker name='Target11_mark'>タンゴ-１</marker>に存在する全抵抗を排除せよ。","村を制圧","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["攻撃目標<marker name='Target21_mark'>タンゴ-２</marker>に存在する全抵抗を排除せよ。","基地を制圧","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["タキスタン軍は<marker name='Target21_mark_mark'>タンゴ-２</marker>に集結せよ。","駐留","extraction"];

CO1 = player createSimpleTask["Caution1"]; 
CO1 setSimpleTaskDescription["武器を持たない一般市民を殺害してはならない。　３人以上の民間人が死亡した場合、作戦は中止とする。<br/>
もっとも、統制線<marker name='S_mark'>060</marker>以北、<marker name='N_mark'>080</marker>以南に民間人は殆ど居ないはずだ。","注意事項1","Caution1"];

CO2 = player createSimpleTask["Caution2"]; 
CO2 setSimpleTaskDescription["タキスタン軍の指揮官、および副官が戦死した場合、作戦は中止とする。","注意事項2","Caution2"];


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