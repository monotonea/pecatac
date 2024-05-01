waitUntil { !isNil {player} };
waitUntil { player == player };


player createDiaryRecord ["Diary", ["VBIED", "Whole this Takistan land is at lisk for IED.<br/>Especially VBIED(Vehicle Borne Improvised Explosive Device) is menace.To avoid VBIED detonation,you can take 3 ways advised below.Simply blow up the car is pointless to disable its explosive.<br/><br/>1:Bypassing suspicious cars.<br/>2:Elliminate bomb detonator who must be around VBIED.<br/>3:Scout/Pointmen(NO.5 and 6 in Bravo and Charlie) are trained in EOD.So let them get in suspicious cars to find and dispose IED."]];
player createDiaryRecord ["Diary", ["UAV SUPPORT", "Only the leader of command section Alpha(1-1-A) can operate MQ-9 Predator UAV in <marker name='manara'>Manara Airfield</marker>.<br/>Though Pradetor is powerful tool for surveillance and ground attack,do not forget its vulnerability from Anti-Air weapons.<img image='Predator.paa' width='300' height='160'/>"]];
player createDiaryRecord ["Diary", ["Rule Of Engagement", "Be sure to aim at only ARMED target.<br/>Keep in mind that construct confidencial relationship with local civilian."]];

T4 = player createSimpleTask ["RTB"]; 
T4 setSimpleTaskDescription["Once you accomplished your task,Return to <marker name='Artibella'>base</marker> with care.", "RTB", "RTB"];

T1 = player createSimpleTask ["INVESTIGATE MULLADOST"]; 
T1 setSimpleTaskDescription["Certain informations from multiple informants said local Taliban hides their ammunation in <marker name='mulladost'>Mulladost</marker>.<br/>Search and destroy it.", "INVESTIGATE MULLADOST", "INVESTIGATE MULLADOST"];

player setCurrentTask T1;