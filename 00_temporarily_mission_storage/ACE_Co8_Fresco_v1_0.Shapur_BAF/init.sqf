//		������ݒ�
setviewdistance 3000;
setObjectViewDistance 2500;

if(not isServer) exitWith{};

//		�v���C���[�̓����҂�
waitUntil { !isNil {player} };
waitUntil { player == player };

