//
_unit = _this select 0;
_grp = group _unit;

//�J���o����10��ށB�����w��͂ł��܂���
_col = ["ColorBlack","ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorOrange","ColorWhite","ColorPink","ColorBrown","ColorKhaki"] select (ceil (random 10));

//�����Ă�Ԃ�
while {count units _grp != 0} 
do {
_ldr = leader _grp;
_cts = count units _grp;

//�ʒu�ƕ����������[�v������ƂɍX�V
	_pos = position  _ldr;
	_dir = direction (vehicle _ldr);
//�}�[�J�[����Č`�ƐF�ƕ����Ƒ傫���𐮂���B
//�X�̃}�[�J�[�ŗL�����K�v�Ȃ̂ŁA���j�b�g�̖��O�ƊJ�n���Ԃ�g�ݍ��킹�ă��j�[�N�Ȃ�����p��		
	_mk1 = createMarker [format["%1%2",_grp,time],_pos];
	_mk1 setMarkerType "mil_triangle";
	_mk1 setMarkerColor _col;
	_mk1 setMarkerDir _dir;
	_mk1 setMarkerSize [(0.3*_cts),(0.6*_cts)];
//����͌��Â炢�̂ł���
	//_mk1 setMarkerText format["%1",_unit];
//5�b���̍X�V�B0.5�b���炢�ɂ��ă��A���^�C���Ŋώ@����̂��y����	
	sleep 5;
	};
	
//���D���l�ł���
_mk2 = createMarker [format["%1%2",_grp,time],getMarkerPos _mk1];
_mk2 setMarkerType "mil_destroy";
_mk2 setMarkerSize [0.5,0.5];
_mk2 setMarkerDir 45;