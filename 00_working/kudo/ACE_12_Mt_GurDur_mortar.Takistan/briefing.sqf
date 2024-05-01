waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["作戦概要","
任務：<br/>
　敵が保有する２門の迫撃砲とその弾薬箱を破壊せよ。 <br/>
<br/>
状況：<br/>
　<marker name='Target1_mark'>作戦座標080-061</marker>には現地で「グルダル」と呼ばれている<br/>
　岩山が聳え立っている。<br/>
　この山は現在、武装勢力によって完全に掌握されており、<br/>
　連中はこの山のどこかに隠してある迫撃砲で、近くを通る<br/>
　アメリカ軍やタキスタン軍の車列に砲撃を繰り返している。<br/>
　我々はこの目標に空爆を繰り返してきたが、山が硬い岩で<br/>
　出来ているためか、効果は今ひとつのようだ。<br/>
<br/>
目標：<br/>
　歩兵戦力で岩山を攻撃し、武装勢力が隠匿している迫撃砲と<br/>
　その弾薬を全て破壊せよ。　情報部によると迫撃砲は２門あると<br/>
　見られている。<br/>
　岩山の全抵抗を排除する必要は無い。<br/>
　実施要領はTasks項を参照すべし。<br/>
<br/>
予想される敵戦力：<br/>
　この目標の周辺には数多くの敵戦闘員が、岩山の地下や洞窟等も<br/>
　含む広い範囲で生活していると伝えられている。<br/>
　その人数は30～40人程度と言われており、最低でも<br/>
　２丁の重機関銃を保有している模様だ。<br/>
　戦闘車両の類は確認されていないが、監視に向かった無人偵察機が<br/>
　撃墜されており、何らかの対空火器を保有している可能性は高い。<br/>
<br/>
友軍戦力：<br/>
　貴官らの戦力は以下の通り。<br/>
　　突入班(最大12名)<br/>
　　HMMWV　3両<br/>
　　ATV　2両<br/>

"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["地図上の<marker name='Target1_mark'>赤色斜線で示されている範囲</marker>に存在する２門の迫撃砲と、その砲弾の入った木箱を破壊せよ。<br/>
目標の破壊には爆薬が必要となるため、最低でも2つは爆薬を持って行くこと。","捜索と破壊","Task1"];

EX = player createSimpleTask["extraction"]; 
EX setSimpleTaskDescription["目標を達成後、全隊員は<marker name='base'>基地</marker>に集結せよ。","帰還","extraction"];

CO = player createSimpleTask["Caution"]; 
CO setSimpleTaskDescription["武器を持たない一般市民を殺害してはならない。　３人以上の民間人が死亡した場合、作戦は中止とする。","注意事項","Caution"];


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