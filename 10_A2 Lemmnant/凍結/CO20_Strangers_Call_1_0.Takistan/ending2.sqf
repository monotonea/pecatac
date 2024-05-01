T3 setTaskState "succeeded";

0 fadeMusic 0.4;
playMusic ["EP1_Track13V",0];
16 fadeMusic 0.4;

sleep 20;

titleText ["At least some of you guys survived from the hell.\nYou must report what you've seen...","BLACK OUT"];
5 fadeSound 0;
16 fadeMusic 0;
sleep 18;


endMission "END2";