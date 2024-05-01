waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　沈没船に搭載されている高性能曳航式ソーナーを発見し爆破せよ。 <br/>
<br/>
状況：<br/>
　わが国固有の領土である「楽安(たのあ)諸島」は、某国軍による<br/>
　侵攻を受けており、自衛隊は島々を守るため戦っている。<br/>
　敵軍の攻撃は激しく、連中は既に島の一部を占領して部隊を<br/>
　駐留させている。<br/>
<br/>
目標：<br/>
　作戦座標<marker name='Target_mark1'>０５１－０７８</marker>には一隻の漁船が沈没している。<br/>
　この船は船名を「第３８幸福丸」といい、楽安諸島近海で操業し鯖などを<br/>
　漁獲していた事になっている。　しかし、この船の実態はわが国の情報収集船<br/>
　であり、沈む直前まで他国の戦闘艦が放つ音や電波を解析していた。<br/>
<br/>
　この船は某国との戦いが始ったその日、事故により<marker name='Town_mark'>礼品町</marker>付近の浅海に<br/>
　沈没した。<br/>
　当時、我々は戦闘に集中していたため、第３８幸福丸の回収は後回しと<br/>
　され、今もそのままの状態となっている。<br/>
　だが幸い、敵はこの沈没船をただの漁船の残骸だと思っているようだ。<br/>
　諸君らの目標は、この沈没船までたどり着き、船についている漁船には<br/>
　必要無いはずの装備品を、完全に破壊することである。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、様々な兵器を保有している。<br/>
　目標周辺は完全に敵の支配地域であり、多数の敵が確認されている。<br/>
　敵歩兵は１個中隊程度駐留していると推定されており、その他に<br/>
　<marker name='marker_AA'>地対空ミサイル部隊</marker>や、<marker name='marker_Radar'>対空監視部隊</marker>、<marker name='marker_Com'>通信部隊</marker>等が配備されて<br/>
　いる模様だ。<br/>
　その他に<marker name='marker_E1'>E1</marker>、<marker name='marker_E2'>E2</marker>、<marker name='marker_E3'>E3</marker>、<marker name='marker_E4'>E4</marker>に、それぞれ<br/>
　20名程度の敵歩兵が駐留していると言われている。<br/>
<br/>
友軍戦力：<br/>
　<marker name='marker_PL'>貴官ら</marker>の部隊の戦力は以下の通り。<br/>
　　・特殊作戦隊員　１個班（１斑１０名）<br/>
　　・ゴムボート　2艘<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["ゴムボートに乗って敵地へ潜入し、位置座標<marker name='Target_mark1'>０５１－０７８</marker>付近<br/>
水深約１０ｍの海中に没している漁船まで到達せよ。<br/>
到達後は「曳航式ソナー」を発見し、これに爆薬を仕掛けて完全に破壊せよ。<br/>
<img image='Target.jpg' width='320' height='270'/><br/>
曳航式ソナーは船尾付近の海底にあると思われるが、正確な位置は不明である。<br/>
対象物爆破のため、必ず爆薬を携行せよ。　また、確実に破壊するためには<br/>
複数個の爆薬を様々な場所に仕掛ける事が望ましい。<br/>
","曳航式ソナーを爆破","Task1"];


T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["作戦の北進限界は統制線<marker name='marker_NL'>０９５</marker>、東進限界は統制線<marker name='marker_EL'>０６５</marker>とする。<br/>
(統制線を超えてもゲームオーバーにはなりません。)<br/>
","注意事項","Task2"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["目標達成後、全隊員は<marker name='EX_mark'>脱出地点</marker>に集結せよ。","離脱","extraction"];

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