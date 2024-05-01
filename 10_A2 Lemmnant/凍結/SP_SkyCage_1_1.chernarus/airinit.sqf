//declaration パイロットと飛行機の代数を宣言しよう
_pilot = _this select 0;
_craft = vehicle _pilot;

//waiting for init ゲームロジックのinit欄でcraftsアレイが初期化されるのを待ってます
waitUntil {arrayInit};

//general init パイロットをcraftsアレイの末尾に加えます。"count crafts"でアレイの個数を数えてます
crafts set [count crafts,_pilot];

_craft allowdamage false;
_pilot allowdamage false;
_pilot allowFleeing 0;

//call anti crash 墜落しないスクリプトを呼び出します
[_pilot] execVM "antiCrash.sqf";

//Harrier 初期設定
if
	((typeOf _craft) == "AV8B2")
then
{	//弾抜き。[-1]はドライバーシート
	{_craft removeMagazinesTurret [_x,[-1]]} forEach (_craft magazinesTurret [-1]);
};
//Su34 初期設定
if
	((typeOf _craft) == "Su34")
then
{	//[0]はガナーシート
	{_craft removeMagazinesTurret [_x,[0]]} forEach (_craft magazinesTurret [0]);
};	
//こっから武器の補充ループ
while {true} do {

//Hurrier補充
if(
	((typeOf _craft) == "AV8B2")
and
	(_craft ammo "SidewinderLaucher_AH64" == 0))
then
{	//弾抜き
	{_craft removeMagazinesTurret [_x,[-1]];} forEach [
	"300Rnd_25mm_GAU12",
	"6Rnd_Mk82",
	"14Rnd_FFAR",
	"2Rnd_Sidewinder_AH1Z"];

	//武器抜き
	{_craft removeWeapon _x} forEach [
	"SidewinderLaucher_AH64",
	"SidewinderLaucher",
	"SidewinderLaucher_AH1Z",
	"FFARLauncher_14","GAU12",
	"Mk82BombLauncher_6"];

	//弾、武器込め。弾を先にするのがポイント
	{_craft addMagazineTurret ["2Rnd_Sidewinder_AH1Z",[-1]];} forEach [1,2,3,4];
	_craft addWeapon "SidewinderLaucher_AH64";	
		
	sleep 1;
	
	//飛行機の武器をミサイルに設定し、リロード
	{_x selectWeapon "SidewinderLaucher_AH64"} forEach [_craft];
	reload _craft
	};
		
//Su34補充
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

//フレアの補充欄
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