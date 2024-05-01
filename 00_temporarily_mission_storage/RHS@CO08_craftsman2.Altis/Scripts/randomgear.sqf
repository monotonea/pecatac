ber keep chasing the target till dead or within 3m.
  
  //	while {alive _unit && (_unit distance _target > 15)} do {
  while {canMove _unit && (_unit distance _target > 15)} do {
	_unit doMove getPos _target;
	sleep 5;
  };

  // We're in range, make sure we're still alive then pull the pin!
if (!alive _unit) then {
        sleep (random [5, 10, 15]);
};
"R_TBG32V_F" createVehicle getPos _unit;
deletevehicle _unit;
};


 // 中東ゲリラスクリプト
 if(not isServer) exitWith{};
{
	if(faction _x == "IND_G_F") then
	{
	//	被り物
		removeHeadgear _x;
		_arrayheadgear = ["H_Bandanna_cbr","H_Booniehat_dirty","rhsgref_helmet_pasgt_woodland","H_Cap_grn_BI",""];
		_randomheadgear = _arrayheadgear select floor random count _arrayheadgear;
		_x addHeadgear _randomheadgear;
		
	//	服
		removeUniform _x;
		_arrayUniform = ["rhsgref_uniform_flecktarn","rhsgref_uniform_al