/// @description Blooper logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the blooper can swim upwards and it's below mario.
    if (!ready)
    && (y > obj_playerparent.y+16) {
    
        //Swim upwards.
        ready = 1;
        
        //Set gravity
        gravity = 0;
        
        //Sink slowly
        alarm[0] = 40;
        
        //Find Mario
        if (obj_playerparent.x > x)       
            motion_set(45,3);
        else        
            motion_set(135,3);
    }
}

//Slowdown if swimming
if (ready == 1) {

    //Slowdown
    friction = 0.1;
    
    //If there's no speed
    if (speed == 0) {
    
        //Allow swim after a while
        ready = 2;
        alarm[0] = 40;
    }
}

//Otherwise, apply gravity
else if (ready != 1) {

    //Disable friction
    friction = 0;

    //Enable gravity and cap vertical speed
    gravity = 0.1;
    if (vspeed > 0.5)
        vspeed = 0.5;
}

//Prevent the blooper from going too high in screen
if (y < __view_get( e__VW.YView, 0 )+48)
    y = __view_get( e__VW.YView, 0 )+48;

