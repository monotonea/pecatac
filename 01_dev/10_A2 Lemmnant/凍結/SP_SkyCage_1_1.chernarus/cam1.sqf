//まずカメラを作ります
_camera1 = "camera" camCreate [0,0,0];

//こっからループ
while {true} do{
showCinemaBorder false;

//chosing target 撮影対象をcraftsアレイの中から無作為抽出。
mycamTarget = crafts select (floor random (count crafts));

//飛行機が生きてたら撮影開始
if (alive vehicle mycamTarget) then

	{
//頻繁に高度を変えると見てて飽きないんじゃないかな
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

//Fixed camera preparation 固定カメラの経過時間をリセットし、位置決めを行います
loopcount = 0;
fixnum1 = -20+(round random 40);
fixnum2 = -20+(round random 40);
fixnum3 = -20+(round random 40);

//Fixed camera Loop 固定カメラ撮影中

while {loopcount < 12000} do {
_camera1 cameraEffect ["Internal","BACK"];
_camera1 camSetTarget mycamTarget;
_camera1 camSetRelPos [fixnum1,fixnum2,fixnum3];
_camera1 camCommit 0;
_camera1 camSetRelPos [fixnum1,fixnum2,fixnum3];
_camera1 camCommit 0;
loopcount = loopcount + 1;
};

//撮影終わりでふりだしに戻る
_camera1 cameraEffect ["TERMINATE","BACK"];
	};
};

camDestroy _camera1;