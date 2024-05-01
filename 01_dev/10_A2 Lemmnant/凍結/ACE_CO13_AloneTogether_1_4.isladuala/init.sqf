if (isServer) then {
     ace_sys_tracking_markers_enabled = false;
     publicVariable "ace_sys_tracking_markers_enabled"
  };
[] exec "briefing.sqf";
[] execVM "f\common\f_spect\specta_init.sqf";