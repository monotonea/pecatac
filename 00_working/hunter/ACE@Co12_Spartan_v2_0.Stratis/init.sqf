setViewdistance 1100;
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
tf_give_personal_radio_to_regular_soldier = true;

//Task
Task1 = player createSimpleTask ["第一目標制圧"]; 
Task1 setSimpleTaskDescription ["<marker name='s'>Agios Cephs</marker>を制圧しろ。", "第一目標制圧", "第一目標制圧"];
Task2 = player createSimpleTask ["第二目標制圧"]; 
Task2 setSimpleTaskDescription ["<marker name='s_1'>Agios loannis</marker>を制圧しろ。", "第二目標制圧", "第二目標制圧"];
Task3 = player createSimpleTask ["第三目標制圧"]; 
Task3 setSimpleTaskDescription ["<marker name='s_2'>Camp Maxwell</marker>を制圧しろ。", "第三目標制圧", "第三目標制圧"];

//Note
player createDiaryRecord ["Diary", ["Credit","Mission Editor: JagaHunter"]];
player createDiaryRecord ["Diary", ["特記事項","敵装甲車両、対戦車兵器が確認されている。"]];

