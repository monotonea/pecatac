//////////////////////////////////////////////////////////////////
//	LAND_main.sqf		Type90 worte
//	�w���̍~���Ɗ�n�ւ̋A�҂�������X�N���v�g�t�@�C��
//////////////////////////////////////////////////////////////////


//	����	[ �w����, �����n�_�̃w���p�b�h��, �A�҂���n�_�̃w���p�b�h�� ]
//
//	�g�p��̒���1:	�g�p����w����1�@�݂̂�AI�O���[�v�̂��̂��g�p���鎖
//
//	�g�p��̒���2:	LAND_bAction��LAND_uActionPlayer�Ƃ����ϐ������O���[�o���ϐ��Ƃ��Ďg�p����
//					LAND_bAction�̓A�N�V�������j���[��Order chopper to take off��������true�ɂȂ�
//					LAND_uActionPlayer�ɂ̓A�N�V�������j���[�����s�����v���C���[���j�b�g��������
//
//	�g�p��̒���3:	1�~�b�V��������2��ȏケ�̃X�N���v�g���Ăяo���ăw���ňړ�����e�X�g�͂��Ă��Ȃ�
//
//	�g�p��̒���4:	�߂��n���ӂɓG�������ꍇ�������邩�̃e�X�g�͂��Ă��Ȃ�


_unit		= _this select 0;

//	���b�X���T�[�o�ƃf�f�B�P�C�e�b�h�ł��鏈��
if (isServer) then {
	LAND_bAction = false;
	publicVariable "LAND_bAction";

	//	�T�[�o��(AI�w���ւ̎w��)�X�N���v�g���s
	_temp = [_unit, _this select 1, _this select 2]execVM "Land\LAND_server.sqf";
																																				//[West,"HQ"] sideChat "main:exec LAND_server";
};

//	���b�X���T�[�o�ƃN���C�A���g���ł��鏈��
if (!isDedicated) then {
	//	�N���C�A���g��(�A�N�V�������j���[�o�^)�X�N���v�g���s
	_temp = [_unit]execVM "Land\LAND_client.sqf";
																																				//[West,"HQ"] sideChat "main:exec LAND_client";
};

//	�A�N�V�������j���[���������܂őҋ@
waitUntil { LAND_bAction };

//	���j���[�����s�����v���C���[��\�����鐡��
LAND_uActionPlayer sideChat "Take off, Go!";
driver _unit sideChat "Roger. RTB";
																																				//[West,"HQ"] sideChat "main:EOF";
