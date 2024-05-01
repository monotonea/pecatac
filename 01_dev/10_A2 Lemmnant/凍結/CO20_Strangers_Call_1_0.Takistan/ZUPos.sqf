if
	(isServer)
then
	{
	ZUPosNum = (round (random 3)) + 1;
	publicVariable "ZUPosNum";
	};

if
	(ZUPosNum == 1)
exitWith
	{ZU23 setPos getPos ZUPosLogic1};
	
if
	(ZUPosNum == 2)
exitWith
	{ZU23 setPos getPos ZUPosLogic2};
	
if
	(ZUPosNum == 3)
exitWith
	{ZU23 setPos getPos ZUPosLogic3};
	
if
	(ZUPosNum == 4)
exitWith
	{ZU23 setPos getPos ZUPosLogic4};