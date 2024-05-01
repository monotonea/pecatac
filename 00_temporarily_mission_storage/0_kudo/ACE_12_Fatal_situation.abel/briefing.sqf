waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　敵支配地域から脱出せよ。 <br/>
<br/>
状況：<br/>
　日本海に浮かぶ島「丸殿島」は突如、某国軍による<br/>
　侵攻を受け、現在は島の半分以上が敵の手に落ちて<br/>
　いる。　丸殿島の自衛隊は非常に苦しい戦いを強いら<br/>
　れており、いまだ組織と秩序を保ったまま戦闘を続けて<br/>
　いるものの、壊滅寸前にまで疲弊している。<br/>
　日本国と自衛隊は現在、丸殿島からの一時撤退を<br/>
　検討中である。<br/>
<br/>
目標：<br/>
　丸殿島南東部の<marker name='EX_mark'>友軍が掌握している地域</marker>へと脱出せよ。<br/>
　南東部は自衛隊の主戦力が集結しており、防御陣地が<br/>
　構築されている。<br/>
<br/>
予想される敵戦力：<br/>
　敵は重装備の正規軍であり、戦車、迫撃砲、航空機など、<br/>
　様々な兵器を保有している。<br/>
　敵兵の数は少なく見積もっても200人はいるだろう。<br/>
　敵は我々にあまり注目しておらず、それよりも島南東部の<br/>
　友軍陣地へと総攻撃をかけようとしている。<br/>
<br/>
友軍戦力：<br/>
　プレイヤー達はいくつかの部隊の生存者の集まりであり、<br/>
　敵中に孤立している。 戦力は以下の通り。<br/>
　　<marker name='mark_PL'>怒れる男達　12人</marker><br/>
<br/>
既知の敵：<br/>
　1.我々は島じゅうを駆け回り、ついに<marker name='mark_PL'>千ノ鞠</marker>まで逃げて来た。<br/>
　　ここにも敵兵が３人居て遊んでいたが、全員ぶっ殺してやった。<br/>
　2.<marker name='mark_TK'>この辺</marker>に敵戦車が沢山並んでいるのを見た。<br/>
　3.<marker name='mark_HQ'>茶捨村</marker>に敵が居るのが見える。　敵の指揮所になっている？<br/>
　4.<marker name='mark_ST'>我々の存在に気づいている敵</marker>がいて、ずっと追ってくる。<br/>
　　しつこい奴らだ。 人数は15人くらいか？<br/>
　5.自衛隊が<marker name='mark_MT'>この山</marker>に何度も砲撃を繰り返している。<br/>
　　よく判らないけれど、多分<marker name='mark_MT'>ここ</marker>には敵がいる。<br/>
　6.敵の<marker name='mark_AR'>自走ロケット砲</marker>が放列を敷いている。<br/>
　　<marker name='marker_28'>自衛隊の陣地</marker>を攻撃するつもりなのだろう。<br/>
　　味方の砲兵隊にこの事を伝えられたら良いのだが、悲しいかな<br/>
　　連絡手段が無い。<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["全員<marker name='EX_mark'>友軍の陣地</marker>へと脱出せよ。","脱出","Task1"];

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