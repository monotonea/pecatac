While {isServer} do 
{
	ArmorMarkerPos = getpos leader Armors;
	publicVariable "ArmorMarkerPos";
	sleep 0.1;
	"ArmorMarker" setMarkerPos ArmorMarkerPos;
	sleep 0.1;
};