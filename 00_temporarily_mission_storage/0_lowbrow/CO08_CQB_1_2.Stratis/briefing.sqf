waitUntil {!(isNull player)};
waitUntil {player==player};
// NOTE
player createDiaryRecord ["Diary", ["Special Thanks", "If you find bugs or sadestion. Please visit and write a comment for this page.<br/>http://owari-ch.net/<br/><br/>Thank you for playing<br/>Mission Created by Lowbrow<br/>"]]; 

// TASK
// Task 1
hTaskObj1 = player createSimpleTask ["CQB"]; 
hTaskObj1 setSimpleTaskDescription [" <marker name = 'mObj1'>目標の建物</marker>周辺と室内に居る敵を掃討せよ","掃討","掃討"];