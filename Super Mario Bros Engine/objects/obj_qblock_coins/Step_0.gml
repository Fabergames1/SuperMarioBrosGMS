/// @description Reset state

if (state == 1) {

    //Set the vertical speed
    vspeed += 0.4;
    
    //If moving down and near ystart
    if (vspeed > 0) && (y >= ystart) {
    
        //Turn into a empty block if the timer is set to 0
        if (state2 == 2) {
            
            //Turn into a used block and destroy
            instance_create(x,ystart,obj_emptyblock);
            instance_destroy();
        }
        
        //Otherwise, allow the block to be bumped
        else {
        
            vspeed = 0;
            y = ystart;
            state = 0;
        }
    }
}

