/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false);

//Create fire smoke effect
with (instance_create(x-8,y-4,obj_smoke)) {

    sprite_index = spr_fireball_hit;
    image_speed = 0.2;
}

//Destroy
instance_destroy();

