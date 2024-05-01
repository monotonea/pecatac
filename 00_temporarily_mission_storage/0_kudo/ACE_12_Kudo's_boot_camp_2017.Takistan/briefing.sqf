waitUntil {!(isNull player)};
waitUntil {player==player};


//-----------------------------------------

player createDiaryRecord ["Diary", ["概要","
このミッションは練習用のミッションです。<br/>
Arma3に登場する武器装備の使用法の習得や、技能の向上を<br/>
目的としています。<br/>
<br/>
以下の設備が配置されています。<br/>
<br/>
1.動作訓練<br/>
　鉄棒や梯子、金網などが配置されており、歩兵としての<br/>
　基本的な動作を訓練することが出来ます。<br/>
　<br/>
2.武器箱<br/>
　Arma3のアーセナル機能を使用した武器の装備が<br/>
　できます。<br/>
<br/>
3.車庫<br/>
　バギーから戦車まで、大小さまざまな車両が格納されています。<br/>
<br/>
4.駐機場<br/>
　ヘリコプターや航空機が置いてあります。<br/>
　少々遠いので、車庫の車で向かいましょう。<br/>
<br/>
5.トンネル<br/>
　生きた敵兵が待ち構えている、はるか遠くにある戦場に<br/>
　ワープします。　ただし、行くと戻って来れなくなります。<br/>
　この戦闘訓練はマップ上に赤い旗のマーカー示されている<br/>
　場所の敵を全て倒すと「クリア」となります。<br/>
　なお、クリアしてもゲームは終了しません。<br/>
　admin権限を持っている人が手動で終了させて下さい。<br/>
<br/>
"]]; 

//-----------------------------------------

T1 = player createSimpleTask["Task1"]; 
T1 setSimpleTaskDescription["Arma3の操作を習得せよ。","初歩訓練","Task1"];

T2 = player createSimpleTask["Task2"]; 
T2 setSimpleTaskDescription["実際に戦闘を行い技能を向上せよ。","戦闘訓練","Task2"];


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