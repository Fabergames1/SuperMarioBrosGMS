/// @description Hammer bro logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If not jumping through solids
if (throughsolid == 0) {

    //Default wall collision
    event_user(3);

    //Default floor collision
    event_user(4);
    
    //If chasing, jump on walls
    if (chase == 1) {
    
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = -0.5;
        else {
        
            hspeed = 0.25;
            chase = 2;
            alarm[0] = 32;
        }
    }
    else if (chase == 2) {
    
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            alarm[6] = 1;    
    }
}

//Otherwise, cap vertical speed
else {

    if (vspeed > 4) {
    
        vspeed = 4;
        gravity = 0;
    }
}

//Set up the facing direction.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

