if(not isServer) exitWith{};
_hostage = _this select 0;

_hostage setcaptive true;
_hostage playmove "Acts_AidlPsitMstpSsurWnonDnon_loop";
_hostage disableAI "anim";