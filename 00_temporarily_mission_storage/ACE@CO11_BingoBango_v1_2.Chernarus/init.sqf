//    ������ݒ�
setviewdistance 3000;
setObjectViewDistance 2500;

//	�X�N���v�g���T�[�o�[�����Ŏ��s����
if(not isServer) exitWith{};

//	�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };