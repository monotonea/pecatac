///////////////////////////////////////////
/*

Created By Appalachian

null = [this]execVM "countlist.sqf";

*/
///////////////////////////////////////////
if (!isServer) exitWith {};
_clearnum = 3;			//残り人数が設定値になるとクリア
_displaynum = 6;		//残り人数が設定値になるとクリアに必要なkill数を表示
_detectSide = west;		//検知したいsideを設定　（west,east,resistance)
_detectTrigger = end1tri1of2count;	//検知したいトリガー名を設定

 while {_detectSide countside list _detectTrigger > _clearnum} do {			//残り人数が設定値になるとbreakしてクリアへ
  if (_detectSide countside list _detectTrigger <= _displaynum) then {			//残り人数が設定値になるとクリアに必要なkill数を表示
    hintsilent format ["need more %1 kills", ((_detectSide countside list _detectTrigger) - _clearnum)]	
     } else {};

  sleep 5;

}; 

end1tri1of2 = true;	//必要に応じてタスクtrue文に変更
