/// @description Sprite check

//Beanstalk
if (sprite_index == spr_beanstalk) {

    instance_create(xstart-8,ystart,obj_beanstalk);
    instance_destroy();
    exit;
}

//Otherwise
else {

    //Play 'Sprout' sound
    audio_play_sound(snd_sprout, 0, false);
    
    //Fireflower, Starman
    if (sprite_index == spr_fireflower)
    || (sprite_index == spr_starman)
        image_speed = 0.4;
        
    //1-UP
    else if (sprite_index == spr_1up)
        palette_index = pal_1up;
}

