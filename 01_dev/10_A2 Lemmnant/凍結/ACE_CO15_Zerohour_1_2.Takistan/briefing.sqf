waitUntil {!(isNull player)};
waitUntil {player==player};

player createDiaryRecord ["Diary", ["CREDITS", "
Thanks to<br/>
<br/>
Spectate script from Kegetys and F2<br/>
Mortar direction indicator script and range tabeles from Shuko
"]];

player createDiaryRecord ["Diary", ["2B14 MORTAR RANGE TABLES", "
Minimum range(right angle) is 180m (far mode)<br/>
+ 120m by every 1 vertical degree<br/>
<br/>
Interval by every 1 width degree is<br/>
+(Straight distance between mortar and target)*pi/180<br/>
-----------------------<br/>
elv.	range(metres)<br/>
<br/>
90		180<br/>
85		780<br/>
80		1380<br/>
75		1980<br/>
70		2580<br/>
65		3180<br/>
60		3780<br/>
55		4380<br/>
50		4980<br/>
"]]; 
player createDiaryRecord ["Diary", ["ARTILLERY PROTOCOL", "
1. Confirm coordinates of gun and target.<br/>
2. Calculate straight distance between mortar and object by Pythagorean theorem.<br/>
3. Compare distace with mortar range to identify vertical angle.<br/>
4. Calculate direction of target by inverse trigonometric function.<br/>
<img image='artyprotocol.paa' width='1024' height='128'/>"]];
player createDiaryRecord ["Diary", ["COMBAT ENVIRONMENT","The operation is to launch at 22:00,a cold and snowy night.<br/>Moonlight may help you in combat against NV goggle equipped army."]]; 
player createDiaryRecord ["Diary", ["SITUATION", "To carry out our Jihad effectively,<marker name='base'>apostates' Hind</marker> is the most weighty matter.<br/>
Destroy it with your mortar,calculator and AK.<br/>
If you want to taste apostates' blood,you're allowed to kill of them before <marker name='RDV'>rejoin</marker> with other groups assigned as support your extraction."]]; 

//--------------------------------------------------------
T3 = player createSimpleTask["RENDEZVOUS"]; 
T3 setSimpleTaskDescription["Rendezvous with other groups and take resupplies at <marker name='RDV'>097-057</marker>.", "RENDEZVOUS", "RENDEZVOUS"];

T2 = player createSimpleTask["MASSACRE"]; 
T2 setSimpleTaskDescription["If situation allows it,elliminate all the lives in the <marker name='base'>base</marker> to realize the apostates who they're facing up to.", "MASSACRE[OPTIONAL]", "MASSACRE"];

T1 = player createSimpleTask["DESTROY GUNSHIPS"]; 
T1 setSimpleTaskDescription["Destroy three flying tanks parked in <marker name='base'>103-064</marker>.<br/>
The target location is closely guarded,mortar firing is effective to reduce friendly toll.<br/>
You must remind keep in mind that 1 hind leaves to daily patrol every night so this task has a time limit.","DESTROY GUNSHIPS","DESTROY GUNSHIPS"];

player setCurrentTask T1;