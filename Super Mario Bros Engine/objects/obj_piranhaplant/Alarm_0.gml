/// @description Come out from the pipe

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If the player is not nearby, do not come out
    if (obj_playerparent.x > x-32)
    && (obj_playerparent.x < x+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise, come out
    else {
    
        //Set the vertical speed
        vspeed = -0.5;
        
        //Stop
        alarm[1] = 64;
    }
}

