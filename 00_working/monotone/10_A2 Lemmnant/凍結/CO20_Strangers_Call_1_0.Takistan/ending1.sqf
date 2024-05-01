T4 setTaskState "succeeded";

0 fadeMusic 0.1;
playMusic ["EP1_Track02",0];
16 fadeMusic 0.3;

sleep 20;

titleText ["Awesome work,soldiers.\nYou'll get some beer on ice!","BLACK OUT"];
5 fadeSound 0;
16 fadeMusic 0;
sleep 18;


endMission "END1";
