/// @description Throw a given amount of hammers

//If bowser can still throw hammers
if (rounds > 0) {

    //If facing left and not breathing fire
    if (xscale == -1) 
    && (sprite_index == spr_bowser) {
    
        //Play 'Hammer' sound
        audio_play_sound(snd_hammer, 0, false);
        
        //Decrement hammer
        rounds--;
        
        //Create hammer
        with (instance_create(x-8, bbox_top-8, obj_hammer)) {

            hspeed = -1;
            image_xscale = -1;
        }
        
        //Toss another hammer
        alarm[4] = 4+random(4);
    }
    
    //Otherwise, wait
    else
        alarm[4] = 1;
}

//Otherwise, recharge
else if (rounds == 0) {

    //Throw another bunch of hammers.
    rounds = 6;
    
    //Throw them again
    alarm[4] = 120;    
}

