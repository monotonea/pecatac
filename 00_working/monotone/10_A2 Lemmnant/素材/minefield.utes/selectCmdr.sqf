//initList�����ґS���ŁAliveList�͐����c�胊�[�_�[�̃��X�g�B
//Dedicated Server���łǂ��������킩��Ȃ��̂Ŋ�{�O���[�o���֐��ɂ���

initList = 
[
	(units ft0) select 0
];

liveList = [];

//�������烋�[�v
while{true}do
	{	
		//initlist�o�^�B�����ŏ������Ȃ���������ƐS�z
		//�܂��A���C����ɂ��Ă���
		liveList = [];
		
		//�����ĂāA���[�_�[�ŁA�v���C���[��initList�̐l��liveList�ɍڂ���B
		while {(count liveList) == 0}
		do
			{
				{
					if (
						(alive _x) and
						(_x==leader group _x) and
						(isPlayer _x)
						) 
					then {liveList set [count liveList,_x]}
				}forEach initList;
			};
		//�Ȃ�ׂ��l������������A������R�}���_�[�Ɏd���ďグ��
		waitUntil {not isNull (liveList select 0)};

		cmdr = liveList select 0;
		hintSilent format ["%1 is new commander.",cmdr];

		//�R�}���_�[�����S�AAI�ɂȂ����A���[�_�[�ł͂Ȃ��Ȃ����ꍇ�͎��̓K�i�҂�T��
		waitUntil{
					(not alive cmdr) or 
					(not (cmdr ==leader group cmdr)) or
					(not isPlayer cmdr)
					};
					
	};