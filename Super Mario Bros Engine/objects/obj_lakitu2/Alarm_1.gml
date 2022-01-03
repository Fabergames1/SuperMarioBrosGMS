/// @description Toss an egg

//Play 'Hammer' sound
audio_play_sound(snd_hammer, 0, false);

//Create a spiny egg
with (instance_create(x, y-16, obj_lakitu_egg)) {

    if (other.eggmode)
        hspeed = other.target.hspeed;
}

//Set default frame
image_speed = 0;
image_index = 0;

