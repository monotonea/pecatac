///////////////////////////////////////////
/*

Created By Appalachian

null = [this]execVM "countlist.sqf";

*/
///////////////////////////////////////////
if (!isServer) exitWith {};
_clearnum = 3;			//�c��l�����ݒ�l�ɂȂ�ƃN���A
_displaynum = 6;		//�c��l�����ݒ�l�ɂȂ�ƃN���A�ɕK�v��kill����\��
_detectSide = west;		//���m������side��ݒ�@�iwest,east,resistance)
_detectTrigger = end1tri1of2count;	//���m�������g���K�[����ݒ�

 while {_detectSide countside list _detectTrigger > _clearnum} do {			//�c��l�����ݒ�l�ɂȂ��break���ăN���A��
  if (_detectSide countside list _detectTrigger <= _displaynum) then {			//�c��l�����ݒ�l�ɂȂ�ƃN���A�ɕK�v��kill����\��
    hintsilent format ["need more %1 kills", ((_detectSide countside list _detectTrigger) - _clearnum)]	
     } else {};

  sleep 5;

}; 

end1tri1of2 = true;	//�K�v�ɉ����ă^�X�Ntrue���ɕύX
