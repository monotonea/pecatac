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
　複数の情報筋によって、<marker name='Target1_mark'>作戦座標０９９－１１４</marker>に存在する<br/>
　一軒の民家は武装勢力のセーフハウスとして利用されて<br/>
　いる可能性が高いと見られている。　諸君らはここへ突入し、<br/>
　全抵抗を排除、その後別命令があるまでの間これを警備せよ。　<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　この目標は倉庫としての性格が強く、多くの敵戦闘員が<br/>
　集まっている事は稀だと伝えられている。 特に昼間は人の<br/>
　出入りが殆ど無い模様だ。<br/>
　常駐している敵は連絡員が１～２名だと言われているが、<br/>
　もしかすると無人かもしれない。<br/>
　目標周辺には敵戦闘員が一般市民に紛れて民家で<br/>
　生活していると言われているが、その人数は情報源により<br/>
　４人～２０人まで大きな開きがある。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大８名)<br/>
　　状況によっては、タキスタン陸軍へ支援を要請する。<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["基地で装備を整えた後、ヘリコプター「ハミングバード」２機に搭乗し<br/>
（実際に乗り込むのではなく、アクションメニュー「作戦開始」を選択）<br/>
<marker name='LZ_mark'>LZ</marker>まで空路で潜入する。<br/>
着陸後は徒歩で<marker name='Target1_mark'>目標</marker>へと向かい、地図上の<br/>
地図上の<marker name='Target1_mark'>赤色斜線で示されている範囲</marker>に存在する全抵抗を排除せよ。","強襲","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["目標１を達成後、<marker name='Target2_mark'>範囲内</marker>に留まり、別命令があるまで待機せよ。　","証拠物品調査","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["帰還命令が下り次第、全隊員は<marker name='EX_mark'>脱出地点</marker>に集結せよ。","離脱","extraction"];

CO1 = player createSimpleTask["Caution1"]; 
CO1 setSimpleTaskDescription["
以下のどれかに該当した場合、作戦は中止とする。<br/>
<br/>
・武器を持たない一般市民が３人以上死亡した場合。<br/>
・プレイヤー部隊の隊員が１名でも戦死した場合。<br/>
・証拠物品を破壊してしまった場合。<br/>
・ヘリコプター「ハミングバード」２機のうち、どちらかが墜落した場合。<br/>
<br/>
ゲーム中は隊員全員が治療を行う事ができる。<br/>
<br/>
以下、ゲーム内のACE医療設定<br/>
ACE Medical system = Advance wounds.<br/>
PAK = Disable.<br/>
Surgical kit = Anyone.<br/>
Remove Surgical kit = Yes.<br/>
location Surgical kit = Anywhere.<br/>
Condition Surgical kit = Anytime.<br/>
Heal hitpoints = Disable.<br/>
Pain suppression = Enable.<br/>
<br/>
","注意事項","Caution1"];

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