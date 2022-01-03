/// @description Animate toad

//If the player exists
if (instance_exists(obj_player_axe)) {

    //If jumping
    if (vspeed != 0)
        image_index = 1;
        
    //Otherwise,
    else {
    
        //If the player is listening
        if (obj_player_axe.ready == 3)
        && (obj_levelcontrol.x > room_width-128)
            image_speed = 0.1;
            
        //Otherwise, do not animate
        else {
        
            image_speed = 0;
            image_index = 0;
        }
    }
}

