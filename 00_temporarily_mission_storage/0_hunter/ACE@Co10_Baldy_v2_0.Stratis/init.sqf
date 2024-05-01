setViewdistance 1500;
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
tf_give_personal_radio_to_regular_soldier = true;

Task1 = player createSimpleTask ["中継車両の破壊"]; 
Task1 setSimpleTaskDescription ["目標の車両は<marker name='Target'>アンテナのそば</marker>に駐車されている。", "中継車両の破壊", "中継車両の破壊"];
Task2 = player createSimpleTask ["着陸地点の確保"]; 
Task2 setSimpleTaskDescription ["<marker name='LZ'>ランディングゾーン</marker>を確保し、ヘリを待て。<br/>ヘリは30秒程でそちらに到着する。", "着陸地点の確保", "着陸地点の確保"];
Task3 = player createSimpleTask ["帰還"]; 
Task3 setSimpleTaskDescription ["搭乗後はチームリーダーがアクションメニューから<br/>「Order chopper to take off」<br/>を実行せよ。", "帰還", "帰還"];

player createDiaryRecord ["Diary", ["Credit","Mission Editor: JagaHunter<br/>-Land script by Type90"]];

