setViewDistance 500;
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
tf_give_personal_radio_to_regular_soldier = true;

Task1 = player createSimpleTask ["敵基地の制圧"]; 
Task1 setSimpleTaskDescription ["基地にいる敵を排除しろ", "敵基地の制圧", "敵基地の制圧"];

player createDiaryRecord ["Diary", ["Credit","Mission Editor: JagaHunter"]];
player createDiaryRecord ["Diary", ["支援","ラジオコマンド 0-0-1<br/><br/>送電網を操作し、基地周辺をショートさせて街灯を破壊する。<br/>基地は警戒態勢に入るので注意すること。"]];