SHK_getDirsFromVec = {
  private ["_vec", "_azi", "_elev", "_x", "_y", "_z"];
  _vec = _this select 0;
  _x = _vec select 0;
  _y = _vec select 1;
  _z = _vec select 2;
  _azi = _x atan2 _y;
  if (_azi < 0) then {_azi = _azi + 360};
  _elev = _z atan2 sqrt(_x^2 + _y^2);
  [_azi, _elev]
};
[] spawn {
  private "_sh";
  while {true} do {
    waituntil {vehicle player != player};
    if (vehicle player iskindof "2b14_82mm_TK_GUE_EP1") then {
      _sh = [] spawn {
        private "_dirs";
        while {true} do {
          _dirs = [vehicle player weaponDirection (currentWeapon vehicle player)] call SHK_getDirsFromVec;
          _azi = _dirs select 0;
          _azi = round (_azi * 10);
          _azi = _azi / 10;
          _ele = _dirs select 1;
          _ele = round (_ele * 10);
          _ele = _ele / 10;
          hintsilent format ["Azimuth: %1\nElevation: %2\n",_azi,_ele];
          sleep 0.5;
        };
      };
    };
    waituntil {vehicle player == player};
    terminate _sh;
    hintsilent "";
  };
};