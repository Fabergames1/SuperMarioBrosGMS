/// @description Make the player interact with the spring

//If the player is above and moving down, use the stomp event.
if ((other.bbox_bottom < bbox_top-vspeed+5) && (other.vspeed >= 0)) {

    //Animate
    image_speed = 0.4;
    
    //Player logic
    with (other) {
        
        //Force idle state
        obj_playerparent.state = cs_idle;
    
        //Stop horizontal speed.
        hspeed = 0;
        
        //Stop vertical speed.
        vspeed = 0;
        if (gravity > 0)
            gravity = 0;
    }
    
    //Spring is ready
    ready = 1;
    s_ready = 1;
    
    //Player logic (Part 2)
    with (other) event_user(15);
}
    
//If the player is above the spring.
if (ready) {
    
    //Force idle state
    obj_playerparent.state = cs_idle; 
        
    //Set y position
    obj_playerparent.y = self.y+(image_index*4)-14;
}

