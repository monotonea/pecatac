if (isServer) then {
     ace_sys_tracking_markers_enabled = false;
     publicVariable "ace_sys_tracking_markers_enabled"
  };
[] execVM "briefing.sqf";
[] execVM "f\common\f_spect\specta_init.sqf";
[] execVM "markerInit.sqf";
[] execVM "markerloop.sqf";
skiptime (paramsArray select 0);
