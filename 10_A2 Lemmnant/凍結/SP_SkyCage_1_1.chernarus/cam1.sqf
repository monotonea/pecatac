//�܂��J���������܂�
_camera1 = "camera" camCreate [0,0,0];

//�������烋�[�v
while {true} do{
showCinemaBorder false;

//chosing target �B�e�Ώۂ�crafts�A���C�̒����疳��ג��o�B
mycamTarget = crafts select (floor random (count crafts));

//��s�@�������Ă���B�e�J�n
if (alive vehicle mycamTarget) then

	{
//�p�ɂɍ��x��ς���ƌ��ĂĖO���Ȃ��񂶂�Ȃ�����
{_x flyInHeight (100+(round (random 1500)))} forEach crafts;

//1st cut

_camera1 cameraEffect ["Internal","BACK"];
_camera1 camSetTarget mycamTarget;
_camera1 camSetRelPos [-100+(round random 200),-100+(round random 200),-60+(round random 120)];
_camera1 camCommit 0;
_camera1 camSetRelPos [-10+(round random 20),-10+(round random 20),-60+(round random 120)];
_camera1 camCommit (round random 6);
waituntil {(camCommitted _camera1)};

//2nd cut

_camera1 cameraEffect ["TERMINATE","BACK"];
_camera1 cameraEffect ["Internal","BACK"];
_camera1 camSetTarget mycamTarget;
_camera1 camSetRelPos [-100+(round random 200),-100+(round random 200),-60+(round random 120)];
_camera1 camCommit 0;
_camera1 camSetRelPos [-10+(round random 20),-10+(round random 20),-60+(round random 120)];
_camera1 camCommit 2;
waituntil {(camCommitted _camera1)};
_camera1 cameraEffect ["TERMINATE","BACK"];

//Fixed camera preparation �Œ�J�����̌o�ߎ��Ԃ����Z�b�g���A�ʒu���߂��s���܂�
loopcount = 0;
fixnum1 = -20+(round random 40);
fixnum2 = -20+(round random 40);
fixnum3 = -20+(round random 40);

//Fixed camera Loop �Œ�J�����B�e��

while {loopcount < 12000} do {
_camera1 cameraEffect ["Internal","BACK"];
_camera1 camSetTarget mycamTarget;
_camera1 camSetRelPos [fixnum1,fixnum2,fixnum3];
_camera1 camCommit 0;
_camera1 camSetRelPos [fixnum1,fixnum2,fixnum3];
_camera1 camCommit 0;
loopcount = loopcount + 1;
};

//�B�e�I���łӂ肾���ɖ߂�
_camera1 cameraEffect ["TERMINATE","BACK"];
	};
};

camDestroy _camera1;