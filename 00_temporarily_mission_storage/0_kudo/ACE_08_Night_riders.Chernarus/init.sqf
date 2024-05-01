setViewDistance 2200;
setObjectViewDistance 1900;

tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side=true;

execVM "briefing.sqf";

waitUntil { !isNil {player} };
waitUntil { player == player };