_pilot = _this select 0;
_craft = vehicle _pilot;

//��s�@�̍��x��50m�ȉ��ɂȂ�����1000m���܂ő����΂��܂�
while {true} do 
{
	waitUntil { ((position (_craft) select 2) < 50)};
	(_craft) setPos [position (_craft) select 0,position (_craft) select 1,1000];
	sleep 1;
};