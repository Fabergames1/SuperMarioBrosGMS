/// @description Update block movement

if (state == 1) {

    //Set the vertical speed
    vspeed += 0.4;
    
    //If moving down and near ystart
    if (vspeed > 0) && (y >= ystart) {

        //Reset state
        state = 0;
        
        //Stop movement
        vspeed = 0;
        y = ystart;
    }
//Set depth
    depth = -2;
}
else
    depth = 9;
image_index = place_meeting(x,y-16,obj_blockparent)

