/// @description Generate cheep cheeps

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise,
else {

    //If the player is inside the spawning area
    if (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {
    
        //Check if there's 3 or less cheep cheeps
        if (instance_number(obj_bullet) < 1) {
        
            //Play 'Cannon' sound
            audio_play_sound(snd_cannon, 0, false);

            //Repeat
            alarm[0] = 144;
            
            //Create a jumping cheep cheep
            with (instance_create(__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+15, __view_get( e__VW.YView, 0 )+round(random_range(64,176)), obj_bullet)) {
            
                hspeed = -2;
                xscale = -1;
            }
        }
        
        //Otherwise, delay
        else {
        
            alarm[0] = 1;
            exit;
        }
    }
    
    //Otherwise, delay
    else {
    
        alarm[0] = 1;
        exit;
    }
}

