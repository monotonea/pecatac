if (initPosDeactivate) exitWith {};
//--------------------------------------------------------------------------
if isServer then
				{
					placeNum = (ceil(random 3));
					publicVariable "placeNum";
				};
//--------------------------------------------------------------------------
waituntil {!isnil "placeNum"};
/*initpos = [getMarkerPos "RDV" select 0,getMarkerPos "RDV" select 1,0];*/

if	(placeNum == 1)	then	{initpos  = [((getpos posLogic1) select 0),(getpos posLogic1) select 1,(getpos posLogic1) select 2]};
if	(placeNum == 2)	then	{initpos  = [((getpos posLogic2) select 0),(getpos posLogic2) select 1,(getpos posLogic2) select 2]};
if	(placeNum == 3)	then	{initpos  = [((getpos posLogic3) select 0),(getpos posLogic3) select 1,(getpos posLogic3) select 2]};

//---------------------------------------------------------------------------
fireplace				setPos	(initpos);

leader ft1				setPos	[(initpos select 0)+3,(initpos select 1),0];
(units ft1	select 1)	setPos	[(initpos select 0)+4,(initpos select 1)-1,0];
(units ft1	select 2)	setPos	[(initpos select 0)+2,(initpos select 1)-1,0];

leader ft2				setPos	[(initpos select 0),(initpos select 1)-1,0];
(units ft2	select 1)	setPos	[(initpos select 0)+1,(initpos select 1)-2,0];
(units ft2	select 2)	setPos	[(initpos select 0),(initpos select 1)-2,0];
(units ft2	select 3)	setPos	[(initpos select 0)-1,(initpos select 1)-2,0];

leader ft3				setPos	[(initpos select 0)-2,(initpos select 1),0];
(units ft3	select 1)	setPos	[(initpos select 0)-1,(initpos select 1)-1,0];	
(units ft3	select 2)	setPos	[(initpos select 0)-2,(initpos select 1)-1,0];
(units ft3	select 3)	setPos	[(initpos select 0)-3,(initpos select 1)-2,0];
(units ft3	select 4)	setPos	[(initpos select 0)-2,(initpos select 1)-2,0];
(units ft3	select 5)	setPos	[(initpos select 0)-3,(initpos select 1)-2,0];

pod1					setPos	[(initpos select 0)+1,(initpos select 1)+2,0];
pod2					setPos	[(initpos select 0)+2,(initpos select 1)+2,0];

"camp"					setMarkerPos initpos;
"flag_militia_1"		setMarkerPos [(initpos select 0),(initpos select 1)+80,0];