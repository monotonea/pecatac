//declaration �p�C���b�g�Ɣ�s�@�̑㐔��錾���悤
_pilot = _this select 0;
_craft = vehicle _pilot;

//waiting for init �Q�[�����W�b�N��init����crafts�A���C�������������̂�҂��Ă܂�
waitUntil {arrayInit};

//general init �p�C���b�g��crafts�A���C�̖����ɉ����܂��B"count crafts"�ŃA���C�̌��𐔂��Ă܂�
crafts set [count crafts,_pilot];

_craft allowdamage false;
_pilot allowdamage false;
_pilot allowFleeing 0;

//call anti crash �ė����Ȃ��X�N���v�g���Ăяo���܂�
[_pilot] execVM "antiCrash.sqf";

//Harrier �����ݒ�
if
	((typeOf _craft) == "AV8B2")
then
{	//�e�����B[-1]�̓h���C�o�[�V�[�g
	{_craft removeMagazinesTurret [_x,[-1]]} forEach (_craft magazinesTurret [-1]);
};
//Su34 �����ݒ�
if
	((typeOf _craft) == "Su34")
then
{	//[0]�̓K�i�[�V�[�g
	{_craft removeMagazinesTurret [_x,[0]]} forEach (_craft magazinesTurret [0]);
};	
//�������畐��̕�[���[�v
while {true} do {

//Hurrier��[
if(
	((typeOf _craft) == "AV8B2")
and
	(_craft ammo "SidewinderLaucher_AH64" == 0))
then
{	//�e����
	{_craft removeMagazinesTurret [_x,[-1]];} forEach [
	"300Rnd_25mm_GAU12",
	"6Rnd_Mk82",
	"14Rnd_FFAR",
	"2Rnd_Sidewinder_AH1Z"];

	//���픲��
	{_craft removeWeapon _x} forEach [
	"SidewinderLaucher_AH64",
	"SidewinderLaucher",
	"SidewinderLaucher_AH1Z",
	"FFARLauncher_14","GAU12",
	"Mk82BombLauncher_6"];

	//�e�A���퍞�߁B�e���ɂ���̂��|�C���g
	{_craft addMagazineTurret ["2Rnd_Sidewinder_AH1Z",[-1]];} forEach [1,2,3,4];
	_craft addWeapon "SidewinderLaucher_AH64";	
		
	sleep 1;
	
	//��s�@�̕�����~�T�C���ɐݒ肵�A�����[�h
	{_x selectWeapon "SidewinderLaucher_AH64"} forEach [_craft];
	reload _craft
	};
		
//Su34��[
if(
	((typeOf _craft) == "Su34")
and
	(_craft ammo "R73Launcher" == 0))
then
{	
	{_craft removeMagazinesTurret [_x,[0]]} forEach (_craft magazinesTurret [0]);
	
	{_craft removeWeapon _x} forEach (weapons _craft);
	
	{_craft addMagazineTurret ["4Rnd_R73",[0]];} forEach [1,2];
	_craft addWeapon "R73Launcher";
	
	sleep 1;
	
	{_x selectWeapon "R73Launcher"} forEach [_craft];
	reload _craft
	};

//�t���A�̕�[��
if(
	(_craft hasWeapon "CMFlareLauncher")
and
	(_craft ammo "CMFlareLauncher" == 0)
) then
	{
	_craft addMagazineTurret ["120Rnd_CMFlareMagazine",[-1]];
	sleep 1;
	reload _craft};
	
_craft setFuel 1;
sleep 3;
}