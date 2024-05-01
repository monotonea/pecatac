//それぞれのユニット固有のスクリプトってことだ！
_unit = _this select 0;

//カラバリは10種類。※ご指定はできません
_col = ["ColorBlack","ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorOrange","ColorWhite","ColorPink","ColorBrown","ColorKhaki"] select (ceil (random 10));

//生きてる間は
while {alive _unit} 
do {
//位置と方向情報をループ一周ごとに更新
	_pos = position  _unit;
	_dir = direction (vehicle _unit);
//マーカー作って形と色と方向と大きさを整える。
//個々のマーカー固有名が必要なので、ユニットの名前と開始時間を組み合わせてユニークなやつをご用意		
	_mk1 = createMarker [format["%1%2",_unit,time],_pos];
	_mk1 setMarkerType "mil_triangle";
	_mk1 setMarkerColor _col;
	_mk1 setMarkerDir _dir;
	_mk1 setMarkerSize [0.5,1];
//これは見づらいのでお蔵
	//_mk1 setMarkerText format["%1",_unit];
//5秒毎の更新。0.5秒くらいにしてリアルタイムで観察するのも楽しい	
	sleep 5;
	};
	
//ご愁傷様でした	
_pos = position  _unit;

_mk1 = createMarker [format["%1%2",_unit,time],_pos];
_mk1 setMarkerType "mil_destroy";
_mk1 setMarkerColor _col;
_mk1 setMarkerSize [0.5,0.5];
_mk1 setMarkerDir 45;