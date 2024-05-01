setViewDistance 700;
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
tf_give_personal_radio_to_regular_soldier = true;
tf_defaultWestPersonalRadio = "tf_fadak";

player addEventHandler ["Fired", {
	if ((_this select 1) isEqualTo "rhs_weap_rsp30_green") then {
		if (!alive TGT1 && !alive TGT2) then {
			T3 = true;
			publicVariableServer "T3";
		};
	};
}];

Task1 = player createSimpleTask ["指揮車両の破壊"];
Task1 setSimpleTaskDescription ["Fotiaに展開している<marker name='area1'>指揮車両</marker>を破壊しろ。", "指揮車両の破壊", "指揮車両の破壊"];
Task2 = player createSimpleTask ["発射機の破壊"];
Task2 setSimpleTaskDescription ["<marker name='area2'>対戦車ミサイル発射機</marker>を破壊しろ。", "発射機の破壊", "発射機の破壊"];
Task3 = player createSimpleTask ["信号弾発射及び合流"];
Task3 setSimpleTaskDescription ["両目標の破壊後、リーダーは所持している信号弾を発射し、部隊に指示を送れ。<br/>その後、<marker name='re'>合流地点</marker>で上陸してきた部隊に接触せよ。", "信号弾発射及び合流", "信号弾発射及び合流"];

player createDiaryRecord ["Diary", ["Credit","Mission Editor: JagaHunter"]];
player createDiaryRecord ["Diary", ["特記事項","周辺に敵装甲車両や航空機は確認されていない。"]];


