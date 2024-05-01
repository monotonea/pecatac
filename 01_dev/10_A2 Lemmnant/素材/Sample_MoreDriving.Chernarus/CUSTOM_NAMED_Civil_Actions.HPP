class CfgCivilianActions
{
	// Subcategory - designer can choose which ones he wanna use
	class Mc_CA // // By Maj Z. aka Mchide
	{
		// First listed action is always default
		class stay
		{
			// Action's condition. Action can be commited only when condition is true, regardless how large priority is.
			condition = "_twnthreat <= 0";
			// Direct path to FSM with action.
			// Civilian life for given unit won't continue until FSM is completed or unit is dead/deleted.
			// After that, this FSM will be still running, so you have to put condition in there too
			fsm = "ca\modules\alice\data\actions\safe_stay.fsm";
			// Rarity of action. Total number is not 1, but sum of all action rarities.
			rarity = 1;
			// Optional param. If true (1), unit cannot be interacted by other civilian (visiting, talking, ...).
			locked = 0;
			// Optional param. If true, randomization will allow the action to be played again.
			canRepeat = 1;
		};
		class goHomeLimit
		{
			condition = "_twnthreat <= 0 && ((typeof vehicle _unit == 'bis_alice_emptydoor') || (_twnstatus == 'black') || ((count _population * _populationCoef + 1) < count _populationActive))";
			fsm = "ca\modules\alice\data\actions\safe_goHomeLimit.fsm";
			rarity = 1000; //--- Always
			locked = 1;
			canRepeat = 1;
		};
		class goHomeEnv
		{
			condition = "_twnthreat == 0 && (((count _population * _populationCoef + 1) >= count _populationActive) && (daytime < _daytimeStart || daytime > _daytimeEnd) || rain > _rain || overcast > _overcast || fog > _fog)";
			fsm = "ca\modules\alice\data\actions\safe_goHomeEnv.fsm";
			rarity = 1000; //--- Always
			locked = 1;
			canRepeat = 1;
			initVariables[] = {"_daytimeStart","_daytimeEnd","_rain","_overcast","_fog"};
			init = "_daytimeStart = 5 + 4*_randomValue; _daytimeEnd = 18 + 2*_randomValue; _rain = 0.2*_randomValue; _overcast = 0.8 + 0.2*_randomValue; _fog = 0.8 + 0.2*_randomValue;";
		};
		class walk
		{
			condition = "_twnthreat == 0 && daytime > 6.5 && daytime < 22";
			fsm = "ca\modules\alice\data\actions\safe_walk.fsm";
			rarity = 0.8;
		};

		class drive
		{
			condition = "_twnthreat <= 1 && _twnthreat >= 0 && !isnil 'bis_silvie_mainscope' && {_x getvariable 'ALICE_threat' <= 1} count _nearbyTowns > 0 && getnumber(configfile >> 'cfgvehicles' >> typeof (_this select 0) >> 'woman') == 0 && daytime > 5 && daytime < 24 ";
			fsm = "ca\modules\alice\data\actions\safe_drive.fsm";
			rarity = 15;
			locked = 1;
			canRepeat = 0;
		};

		
		class hideIn
		{
			condition = "_twnthreat > 0 && (count _doors > 0 || (typeof vehicle _unit == 'bis_alice_emptydoor'))";
			fsm = "ca\modules\alice\data\actions\combat_hideIn.fsm";
			rarity = 1.0;
			locked = 1;
		};
		class hideInLimit
		{
			condition = "_twnthreat > 0 && (_twnstatus == 'black') && (count _doors > 0 || (typeof vehicle _unit == 'bis_alice_emptydoor'))";
			fsm = "ca\modules\alice\data\actions\combat_hideIn.fsm";
			rarity = 1000; //--- Always
			locked = 1;
		};
		class hideOut
		{
			condition = "_twnthreat > 0";
			fsm = "ca\modules\alice\data\actions\combat_hideOut.fsm";
			rarity = 0.5;
			locked = 1;
		};
		class flee
		{
			condition = "_twnthreat > 1 && _twnstatus != 'black' && (count _nearbyTowns > 0)";
			fsm = "ca\modules\alice\data\actions\combat_flee.fsm";
			rarity = 0.5;
			locked = 1;
		};
		class fleeForced
		{
			condition = "_playersNear && (count _nearbyTowns > 0) && (count _doors < (_doorcountdef * _doorcountlimit))";
			fsm = "ca\modules\alice\data\actions\combat_flee.fsm";
			rarity = 10;
			locked = 1;
		};
		class hooker
		{
			condition = "_twnthreat <= 0 && _unitType == 6 && daytime > 8 && daytime < 24";
			fsm = "ca\modules\alice\data\actions\safe_hooker.fsm";
			rarity = 2;
			locked = 1;
		};
	};
};