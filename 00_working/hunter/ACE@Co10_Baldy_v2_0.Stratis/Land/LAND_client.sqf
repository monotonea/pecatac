//////////////////////////////////////////////////////////////////
//	LAND_client.sqf		Type90 worte
//	�w���̍~���Ɗ�n�ւ̋A�҂�������X�N���v�g�t�@�C�� �N���C�A���g������
//////////////////////////////////////////////////////////////////


//	����	[ �w���� ]
_unit		= _this select 0;
																																				//[West,"HQ"] sideChat "Client:start";
//	�v���C���[���w���ɏ�Ԃ���܂őҋ@
waitUntil { player in crew _unit };
																																				//[West,"HQ"] sideChat "Client:getIn";
_hAction		= 0;
_hActionMark1	= 0;
_hActionMark2	= 0;
_bActionCreated = false;

while { !LAND_bAction && !_bActionCreated } do {
	sleep 1;
	//	(�v���C���[�����[�_�[���A�N�V�������j���[���܂�����Ă��Ȃ�)�ꍇ�ɃA�N�V�������j���[��ݒ肷��
	//	���[�_������ŕʂ̃v���C���[�Ɉڂ����ꍇ�ɑΏ�
	//	1�b��1�񔻒肷��̂ŏ�Ԓ��Ƀ��[�_���n����Ă�OK
	if ( leader group player == player && !_bActionCreated) then {
		_hActionMark1	= _unit addAction [ "------", "", [], 6, false, true ];
		_hAction		= _unit addAction [ "Order chopper to take off", "Land\LAND_Action.sqf", [], 6, false, true ];
		_hActionMark2	= _unit addAction [ "------", "", [], 6, false, true ];
		_bActionCreated = true;
																																				//[West,"HQ"] sideChat "Client:Create action menu";
	};
};
																																				//[West,"HQ"] sideChat "Client:end roop";
//	�A�N�V�������j���[���������܂őҋ@
waitUntil { LAND_bAction };

//	�A�N�V�������j���[���폜
if (_bActionCreated) then {
	_unit removeAction _hAction;
	_unit removeAction _hActionMark1;
	_unit removeAction _hActionMark2;
																																				//[West,"HQ"] sideChat "Client:Delete action menu";
};

																																				//[West,"HQ"] sideChat "Client:EOF";
