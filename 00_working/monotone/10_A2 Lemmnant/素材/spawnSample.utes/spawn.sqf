//�����񐔃J�E���^�[���`����
_spawncount = 0;

//���j�b�g����������ꏊ�̃^�e���R���W���`�B
_spawnPointX = position centerLogic select 0;
_spawnPointY = position centerLogic select 1;  

//���V�A�l�����Ă����A���C���`�B���̃A���C�̒��Ƀ��X�g�A�b�v���ꂽ���V�A�l�ǂ������delete���邼
//���̃A���C�͂��̃X�N���v�g�ȊO�ł��Q�Ƃ���邩��A_�͖��O�̓��ɂ��Ȃ��B(�O���[�o���֐����Ă��)

//�J�E���^�[��11��܂�����炱��while���[�v�͂����܂���
While {_spawnCount <11}
	do
		{
		//�܂����j�b�g�𐶐������B
		_newRussian = "RU_Soldier" createVehicle [_spawnPointX,_spawnPointY];
		
		//�������ꂽ���V�A�l���A���C�Ƀu�`���ށB
		ruskies set [count ruskies,_newRussian];
		
		//�J�E���^�[��1��܂킻��
		_spawnCount = _spawnCount +1;
		
		//��������ꏊ��������Ƃ��炵�Ă�낤�B�O�̂��߁B
		_spawnPointX = _spawnPointX + 1;
		_spawnPointY = _spawnPointY + 1;
		
		};