/// @description Play sound and create a lava effect.

//Play sound
audio_play_sound(snd_lava, 0, false);

//Check for nearby lava.
lava = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_lava,0,0);
if (lava) {

    //Create lava splash
    with (instance_create(x-8,lava.bbox_top-12,obj_smoke)) {
    
        sprite_index = spr_lavasplash;
        image_speed = 0.3;
    }
}

