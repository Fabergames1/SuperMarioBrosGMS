/// @description Breathe fire

//Play 'Bowser Flame' sound
audio_play_sound(snd_bowser_flame, 0, false);

//Create fire
with (instance_create(x-16, y-15, obj_bowser_flame)) {

    if (choose(0,1,2) == 1) {
    
        vspeed = -1;
        alarm[0] = 16;
    }
    else if (choose(0,1,2) == 2) {
    
        vspeed = 1;
        alarm[0] = 16;
    }
}

//Set the animation
image_speed = 0;
image_index = 1;

//Return to normal
alarm[3] = 36;

