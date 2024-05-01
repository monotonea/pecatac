hungryVehicles = [Su25,Mi8a,Mi8b];

while
	{true}
do
	{
		{_x setfuel 1} forEach hungryVehicles;
		sleep 100;
	};