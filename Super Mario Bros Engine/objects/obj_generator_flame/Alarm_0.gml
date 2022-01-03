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
    
        //Check if there's 1 flame and bowser does not exist
        if (instance_number(obj_bowser_flame) < 1) && (instance_number(obj_bowser) == 0) {
        
            //Play 'Flame' sound
            audio_play_sound(snd_flame, 0, false);

            //Repeat
            alarm[0] = 144;
            
            //Create a jumping cheep cheep
            with (instance_create(__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+15, __view_get( e__VW.YView, 0 )+choose(96,112,128,144), obj_bowser_flame)) {
            
                hspeed = -1.5;
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

