/// @description Player climb logic

//If the player is about to climb up
if (ready == false) {

    //If the beanstalk does not exist
    if (myvine != -1)
    && (myvine.vspeed == 0) {
    
        //Make the player climb up
        ready = true;
    
        //Move up
        vspeed = -1;
    }
}

//Otherwise, if moving up
else if (ready == 1) {

    //If the player reaches the climbing limit
    if (y < ystart) {
    
        //Destroy
        with (scr_player_retrieve(x,ystart)) {
        
            state = cs_climb;
            canhang = 1;
            alarm[2] = 8;
        }
        
        //Destroy
        instance_destroy();
    }
}

//Update sprite
if (global.player == 0)
    sprite_index = scr_mario_climb();
else
    sprite_index = scr_luigi_climb();

