if (!isServer) exitWith {};

_unit = _this select 0;
_group = _this select 1;

// ���݂̃E�F�C�|�C���g�ň�U�~�߂�
_unit lockWP true;

// ���x��������
_unit flyInHeight 5;

// ���x�Ƒ��x���w��̐��l�ȉ��ɂȂ�܂ő҂�
// �n�`������ɂ���Ă͍��x��20m�ȉ��ɉ�����Ȃ��̂ŁAselect 2 < 20��20�`35m���炢�͈̔͂Œ�������
waitUntil { ((getPosASL _unit) select 2 < 5) && (speed _unit < 10) };
//	��̍s�Őݒ肵�����x�E���x�ɂȂ�����w���̓������~�߂�
//	_unit stop true;

sleep 1;
	{
		unassignvehicle _x;
		_x action ["EJECT", _unit];
		sleep 2
	} foreach units _group;

// �S�����~���܂ő҂�
waitUntil { {alive _x} count (crew _unit) - (units group _unit) == 0 };
sleep 3;

// �E�F�C�|�C���g�̃��b�N��stop���������Ď��̃E�F�C�|�C���g�ֈړ�
_unit stop false;
_unit lockWP false;
_unit flyInHeight 30;

