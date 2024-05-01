ncounter=0;
while{ncounter<(count lightlogics)}do
{[lightlogics select ncounter,3] execVM "light.sqf";
ncounter= ncounter+1;
sleep (random 0.4)};