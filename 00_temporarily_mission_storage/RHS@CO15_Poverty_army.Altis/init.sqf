//    視程を設定
setviewdistance 2000;
setObjectViewDistance 1800;

//	biggerflare.sqfのinit ローカルで実行
[] execVM "Scripts\InitBiggerFlare.sqf";

// これ以降はサーバー側だけで実行
if(not isServer) exitWith{};

//	TFAR LR自動割り当て解除 周波数を同期
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// 米軍ユニットのNVGをインベントリからスロットに移す
{
	if(side _x == west) then
	{
		_x assignItem "rhsusf_ANPVS_14";
	};
} foreach (allUnits);

/* OPFORユニット全員に耳栓とスコップを配る
{
	if(side _x == east) then
	{
		_x additem "ACE_EntrenchingTool";
		_x additem "ACE_EarPlugs";
	};
} foreach (allUnits);
*/
 //    ACE耳栓・ACRE2ラジオ
ammobox additemCargoGlobal ["ACE_EarPlugs",20];
ammobox additemCargoGlobal ["ACE_EntrenchingTool",20];
ammobox additemCargoGlobal ["ACE_Flashlight_XL50",20];
ammobox additemCargoGlobal ["ACE_SpareBarrel",3];

// 旗の帰属を初期化（一応）
FlagSide USflag == west;
// チームリーダーにACREラジオを与える
{_x additem "ACRE_PRC152"} forEach [p1,p2,p3,p4];

