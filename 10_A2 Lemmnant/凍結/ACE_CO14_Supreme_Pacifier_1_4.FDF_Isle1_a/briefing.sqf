player createDiaryRecord ["Diary", ["Fireteam names come from...", "******************<br/>Leaders of USSR<br/>******************<br/>
<img image='lenin.jpg' width='120' height='150'/><br/>
Vladimir Lenin<br/>
[1917-1924]<br/>
<br/>
<img image='okada.jpg' width='120' height='150'/><br/>
Joseph Stalin<br/>
[1941-1953]<br/>
<br/>
<img image='khrushchev.jpg' width='120' height='135'/><br/>
Nikita Khrushchev<br/>
[1953-1964]<br/>
<br/>
<img image='brezhnev.paa' width='120' height='150'/><br/>
Leonid Brezhnev<br/>
[1954-1982]
"]]; 
player createDiaryRecord ["Diary", ["Armored rainforcements", "An armored platton called Komsomol is going to support us.But they seems to be late for few minutes.<br/><img image='Armor.jpg' width='200' height='200'/>"]];
player createDiaryRecord ["Diary", ["Squads in action", "The main force in this action consists 2 infantry squads.<br/>Squad Bol'sheviki(your squad) goes <marker name ='Arrow'>straight</marker> and blow up the <marker name='Communication_Facility'>communication facility</marker> while squad Men'sheviki <marker name ='Arrow_1'>bypasses</marker> from south.</br>To succeed double-side attack on <marker name='Protvino'>Protvino</marker>,both squads are required to communicate each other well."]]; 
player createDiaryRecord ["Diary", ["Situation", "Tighten up comrades!<br/>Central committee of ChDKZ determined to liberate the people in Podagorsk from their puppet-goverment!"]]; 

T2 = player createSimpleTask["SEIZE PROTVINO"]; 
T2 setSimpleTaskDescription["Seize and hold <marker name='Protvino'>Protvino</marker>,the nest of CAPITALISTIC-IMPERIALISTS!", "SEIZE PROTVINO", "SEIZE PROTVINO"];

T1 = player createSimpleTask["CUT COMMUNICATION"]; 
T1 setSimpleTaskDescription["To prevent enemy reaction forces,you must blow up their <marker name='Communication_Facility'>communication facility</marker>.<br/>Once you spotted,execute this task quickly or they'll call reinforcements.","CUT COMMUNICATION","CUT COMMUNICATION"];

player setCurrentTask T1;