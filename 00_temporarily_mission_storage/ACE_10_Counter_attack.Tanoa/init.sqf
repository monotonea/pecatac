/*
�C���x���X�N���v�g	2015/1/19	by gachopin
ARTY_TEAM�𑝂₹�Δ��ˋ��_�𑝂₹�܂�
Arty_Reload��0�ɂ��ă~�b�V��������1�ɂ���΍D���Ȏ��ԂɖC���x�����\�ɂȂ�܂�
���j�b�g��init��this addaction ["call arty","arty_script.sqf"]�������΂��������˖��ߋ��_�ł�
GUI���̐���������arty_gui�t�H���_����explain.jpg��ύX�B�ijpg�̉𑜓x�͂Ȃ�ł������݂����j
*/
[] spawn compile preprocessFileLineNumbers "arty_gui\fnc.sqf";
ARTY_test_shot_count	= 1;	//���˂Ō���
ARTY_fire_shot_count	= 10;	//���͎˂Ō���

//MAP���Ƃ̕␳�@X,Y�͔{���@XA�AYA�͕␳�l

ARTY_X			= 1;
ARTY_XA			= 0.8;
ARTY_Y			= 1;
ARTY_YA			= 0.95;

ARTY_TEAM		= [mo1,mo2,mo3];
ARTY_magazine		= ["8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_Smoke_white"];
//ARTY_magazine		= ["12Rnd_230mm_rockets","8Rnd_82mm_Mo_Smoke_white"];
ARTY_POS_RANDOM		= 90;	//�����_���Ȉʒu�ɒ��e(0�ł���)
	missionnamespace setvariable ["EW",115];	//�������W(���R)
	missionnamespace setvariable ["SN",062];	//�������W(�^�e)
player execVM "arty_gui\arty_player.sqf";
if (isServer) then{
	missionnamespace setvariable ["Arty_Ammo1",30];	//�֒e
	publicvariable "Arty_Ammo1";
	missionnamespace setvariable ["Arty_Ammo2",20];//�����e
	publicvariable "Arty_Ammo2";
	missionnamespace setvariable ["Arty_Reload",1];	//0�ōŏ��͌��ĂȂ�
	publicvariable "Arty_Reload";
	missionnamespace setvariable ["Arty_Fire",[0]];
	[] execVM "arty_gui\arty_server.sqf";
	[ARTY_TEAM] execVM "arty_gui\arty_event.sqf";
};
	missionnamespace setvariable ["Arty_Wait1",8];	//���˖��ߌ�̑҂����ԁi�b)�@0�ł��悢
	missionnamespace setvariable ["Arty_Wait2",25];	//���͎˖��ߌ�̑҂����ԁi�b)�@0�ł��悢

	
	
	
	
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side=true;
//initWeaponFunction =  compile preprocessFileLineNumbers "initWeapon.sqf";
//call initWeaponFunction;

execVM "briefing.sqf";