/// @description Move towards the player

//Move towards the player
hspeed = -0.3;

//Make him jump
alarm[0] = 60;

//Make him breath fire
alarm[1] = 300;

//Make him throw hammers
if (hammer == 1)
    alarm[4] = 60;

