waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------
player createDiaryRecord ["Diary", ["作戦概要","
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
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標038-056</marker>に存在する<br/>
　民家の一廓は武装勢力のセーフハウスとして利用されて<br/>
　いる事が判明した。　諸君らはここへ突入し、<br/>
　全抵抗を排除、証拠物品を収集した後、撤収せよ。　<br/>
　本作戦は目標までの距離が長く、ヘリコプター以外での<br/>
　侵攻は不可能である。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　目標には最低1名の組織幹部が常駐している事が判っているが、<br/>
　人の出入りが多いため、襲撃時に武装勢力のメンバーが何人<br/>
　居るかは判らない。　ただ、目標自体は小さな家1軒と物置<br/>
　小屋2軒のみのため、中に居る人間の数には限界があるだろう。<br/>
<br/>
　この地域の住人は反米感情が高く、誰もが敵になり得ると<br/>
　言って良い。　近所の住人は武装勢力に協力的な者も多く、<br/>
　戦闘が開始されたなら駆けつけてくるであろう者達はかなりの<br/>
　数が予想される。　その人数は30名前後と見られているが、<br/>
　状況によってはさらに増える可能性もあると予想されている。<br/>
　現地のタキスタン軍でさえ非協力的であり、目標の近くには<br/>
　駐屯地があるが、おそらく戦いが始まってもそこのタキスタン軍は<br/>
　傍観を決め込むだろう。　こちらも彼らには作戦の実施を伝えて<br/>
　いない。<br/>
<br/>
　敵の武装は小火器程度と推測されるが、重機関銃等を数丁<br/>
　保有している可能性もある。<br/>
　本作戦は夜間に行われるが、敵は暗視装置の類を一切<br/>
　保有していないと見られている。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大8名)<br/>
　　ヘリコプター搭乗員(最大4名)<br/>
　　MH-47　1機<br/>
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