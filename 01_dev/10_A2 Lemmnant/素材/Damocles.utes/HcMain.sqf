//initList�����ґS���ŁAliveList�͐����c�胊�[�_�[�̃��X�g�B
//Dedicated Server���łǂ��������킩��Ȃ��̂Ŋ�{�O���[�o���֐��ɂ���
//initList����l���w�肵�āA���ꂼ��̃��j�b�gHcInit.sqf��execVM�����Ă��Όp�����ʂ��D���Ȃ悤�Ɍ��߂���B�ł�����͂��Ȃ��B

initList = 
(units ft0)+
(units ft1)
;

liveList = [];

//subList�͎w�����ɓ���O���[�v�̃��X�g
//�����ɍڂ��邾������Ȃ��ăG�f�B�^��ł����W���[����ݒ肵�ăV���N��������K�v������

sublist = [AAVP];

//�������烋�[�v
while{true}do
	{	
		//initlist�o�^�B�����ŏ������Ȃ���������ƐS�z
		
		//�܂���ɂ��Ă���
		liveList = [];
		
		//�����ĂāA���[�_�[����Ă�initList�̐l��liveList�ɍڂ���B
		{	
			if ((alive _x) and(_x==leader group _x)and (isPlayer _x)) 
			then {liveList set [count liveList,_x]}
		}forEach initList;
		
		waitUntil {not isNull (liveList select 0)};

		cmdr = liveList select 0;
		{cmdr hcSetGroup [_x]}forEach subList;
		hintSilent format ["%1 is new commander.",cmdr];

		//���ʂ܂ő҂Ƃ�
		waitUntil{not alive cmdr};
		waituntil{not (cmdr ==leader group cmdr)};
		hcRemoveAllGroups cmdr;
		
		//�܂���subordinates�̊����𒆎~������
		{deleteWaypoint [_x,currentWaypoint _x]}forEach sublist;
	};