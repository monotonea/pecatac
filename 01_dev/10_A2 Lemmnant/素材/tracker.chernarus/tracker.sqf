//���ꂼ��̃��j�b�g�ŗL�̃X�N���v�g���Ă��Ƃ��I
_unit = _this select 0;

//�J���o����10��ށB�����w��͂ł��܂���
_col = ["ColorBlack","ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorOrange","ColorWhite","ColorPink","ColorBrown","ColorKhaki"] select (ceil (random 10));

//�����Ă�Ԃ�
while {alive _unit} 
do {
//�ʒu�ƕ����������[�v������ƂɍX�V
	_pos = position  _unit;
	_dir = direction (vehicle _unit);
//�}�[�J�[����Č`�ƐF�ƕ����Ƒ傫���𐮂���B
//�X�̃}�[�J�[�ŗL�����K�v�Ȃ̂ŁA���j�b�g�̖��O�ƊJ�n���Ԃ�g�ݍ��킹�ă��j�[�N�Ȃ�����p��		
	_mk1 = createMarker [format["%1%2",_unit,time],_pos];
	_mk1 setMarkerType "mil_triangle";
	_mk1 setMarkerColor _col;
	_mk1 setMarkerDir _dir;
	_mk1 setMarkerSize [0.5,1];
//����͌��Â炢�̂ł���
	//_mk1 setMarkerText format["%1",_unit];
//5�b���̍X�V�B0.5�b���炢�ɂ��ă��A���^�C���Ŋώ@����̂��y����	
	sleep 5;
	};
	
//���D���l�ł���	
_pos = position  _unit;

_mk1 = createMarker [format["%1%2",_unit,time],_pos];
_mk1 setMarkerType "mil_destroy";
_mk1 setMarkerColor _col;
_mk1 setMarkerSize [0.5,0.5];
_mk1 setMarkerDir 45;