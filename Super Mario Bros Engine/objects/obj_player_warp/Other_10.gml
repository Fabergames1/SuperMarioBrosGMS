/// @description Create player

with (scr_player_retrieve(x,y)) {

    //If the object was moving down, hereby vertical speed
    if (other.vspeed > 0) {
    
        //Set vertical speed
        vspeed = other.vspeed;
        
        //Set jump state
        state = cs_jump;
    }
    
    //Facing direction
    xscale = other.image_xscale;
}

//Destroy
instance_destroy();

