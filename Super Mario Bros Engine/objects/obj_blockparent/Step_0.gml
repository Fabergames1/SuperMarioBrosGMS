/// @description Update block movement

if (state == 1) {

    //Set the vertical speed
    vspeed += 0.4;
    
    //If moving down and near ystart
    if (vspeed > 0) && (y >= ystart) {
    
        //Sprout out an item
        if (sprout != cs_coin) {
        
            event_user(1);
        }
        
        //Turn into a used block and destroy
        instance_create(x,ystart,obj_emptyblock);
        instance_destroy();
    }
    
    //Set depth
    depth = -2;
}

//Otherwise, set default depth
else
    depth = 9;

