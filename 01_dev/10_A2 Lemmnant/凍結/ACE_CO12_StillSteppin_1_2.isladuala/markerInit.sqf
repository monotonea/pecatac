
"bunkermarker1" setMarkerPos (getpos bunker1);
"bunkermarker2" setMarkerPos (getpos bunker2);

"towermarker1" setMarkerPos (getpos tower1);
"towermarker2" setMarkerPos (getpos tower2);

"HMGmarker1" setmarkerPos (getpos HMG1);
"HMGmarker2" setmarkerPos (getpos HMG2);
"HMGmarker3" setmarkerPos (getpos HMG3);
"HMGmarker4" setmarkerPos (getpos HMG4);
"HMGmarker5" setmarkerPos (getpos HMG5);

"Hospitalmarker" setMarkerPos (getpos Hospital);

"bombpoint_a1" setMarkerPos (getMarkerPos "BombLine_a1");
"bombpoint_b1" setMarkerPos (getMarkerPos "BombLine_b1");



While {isServer} do 
{
	MTVRmarkerPos = getpos MTVR;
	publicVariable "MTVRmarkerPos";
	sleep 0.1;
};