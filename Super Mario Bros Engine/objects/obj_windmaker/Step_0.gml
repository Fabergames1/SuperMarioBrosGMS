/// @description Handle wind

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    audio_stop_sound(snd_wind);
    ready = 0;
    exit;
}

//Otherwise
else {

    //If the wind is not blowing...
    if (ready == 0) {
    
        //...and the player is inside the given area
        if (obj_playerparent.x > xmin)
        && (obj_playerparent.x < xmax) {
        
            //Play 'Wind' sound
            audio_play_sound(snd_wind, 0, true);
            
            //Blow
            ready = 1;
        }
    }
    
    //Otherwise, stop
    else if (ready == 1) {
    
        //If the player exits the given area
        if (obj_playerparent.x > xmax) {
        
            //Stop 'Wind' sound
            audio_stop_sound(snd_wind);
            
            //Destroy all leaves
            with (obj_leaf) instance_destroy();
            
            //Stop blowing
            ready = 2;
        }
        
        //Push the player
        if (!collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top-4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            obj_playerparent.x++;
    }
}

