/// @description The player on the flagpole

//Default flagpole
flagpole = -1;

//Play the flagpole sound
audio_play_sound(snd_flagpole, 0, false);

//Move down
vspeed = 2;

//Start moving
alarm[0] = 80;

//Stop both music and timer
with (obj_levelcontrol) {

    musicdisable = true;
    alarm[1] = 1;
    alarm[2] = 0;
}

//Forget check points
global.checkpoint = noone;
global.checkpointroom = noone;

//State
ready = 0;
ready2 = 0;
ready3 = 0;

//Get number of fireworks
if (global.time -(floor(global.time/10)*10) == 6) 
    global.fireworks = 6;
else if (global.time -(floor(global.time/10)*10) == 3) 
    global.fireworks = 3;
else if (global.time -(floor(global.time/10)*10) == 1) 
    global.fireworks = 1;

