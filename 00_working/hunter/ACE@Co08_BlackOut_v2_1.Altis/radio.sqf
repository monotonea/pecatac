_text = switch (_this select 0) do {
	case 0: {
		"<t shadow='1' size='0.7'><t shadowColor='#1987E5'>上陸部隊: </t>Alpha、敵が長距離通信を行っている模様。注意せよ。</t>";
	};
	case 1: {
		"<t shadow='1' size='0.7'><t shadowColor='#1987E5'>上陸部隊: </t>信号弾を確認した。上陸を開始する。</t>";
	};
};

[_text,-1,1,4,0.1,0] spawn BIS_fnc_dynamicText;