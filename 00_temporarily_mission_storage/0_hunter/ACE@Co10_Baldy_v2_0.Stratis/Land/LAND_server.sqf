//////////////////////////////////////////////////////////////////
//	LAND_server.sqf		Type90 worte
//	�w���̍~���Ɗ�n�ւ̋A�҂�������X�N���v�g�t�@�C��	�T�[�o������
//////////////////////////////////////////////////////////////////


//	����	[ �w����, �����n�_�̃w���p�b�h��, �A�҂���n�_�̃w���p�b�h�� ]
_unit		= _this select 0;
_posLZ		= getPos (_this select 1);
_posBase	= getPos (_this select 2);
																																			//[West,"HQ"] sideChat "server:start";
//	�m�C�l���ꉞMAX�ɂ��Ă���
_unit allowFleeing 0;

//	LZ�܂ňړ�
_unit land "NONE";														//	�����̃L�����Z��(�ꉞ2�x�ڂ̌Ăяo���p)
_unit doMove _posLZ;
_unit flyInHeight 100;
_unit setBehaviour	"CARELESS";											//	�P�A���X���ƐF�X�������邯�ǎˌ��͂���
_unit setSpeedMode	"NORMAL";
																																			//[West,"HQ"] sideChat "server:Moving to LZ";
//	LZ�܂ŃX�N���v�g���X�g�b�v
waitUntil { _unit distance _posLZ < 300 };
																																			//[West,"HQ"] sideChat "server:Start Landing LZ";
//	LZ�ɒ���������
while { !LAND_bAction } do {
	_unit land "GET IN";	sleep 0.5;
																																			//[West,"HQ"] sideChat "server:Landing LZ";
};

//	�����㏸������
_unit land "NONE";
_unit doMove getPos _unit;
_unit setSpeedMode	"LIMITED";

//	���x20�ɂȂ�܂ŃX�N���v�g���X�g�b�v
waitUntil { (getPos _unit) select 2 > 20 };
																																			//[West,"HQ"] sideChat "server:Up to 20";
//	��n�֋A��
_unit doMove _posBase;
_unit setSpeedMode	"NORMAL";
																																			//[West,"HQ"] sideChat "server:Go to base";
//	��n�܂ŃX�N���v�g���X�g�b�v
waitUntil { _unit distance _posBase < 300 };

_unit setSpeedMode	"LIMITED";
																																			//[West,"HQ"] sideChat "server:Start Landing Base";
//	�������������ăG���W�����؂��܂�5�b������Land�����s����
while { isEngineOn _unit } do {
	_unit land "LAND";	sleep 5;
																																			//[West,"HQ"] sideChat "server:Landing Base";
};
																																			//[West,"HQ"] sideChat "server:EOF";
