/// @description Bumped by a block

if (other.vspeed < 0) 
&& (bbox_bottom < other.yprevious+5) {

    //Set the vertical speed
    vspeed = -3;
    
    //Set the horizontal speed
    if (hspeed == 0)
        hspeed = 1;
    else {
    
        if (x > other.x+sprite_width/2)
            hspeed = 1;
        else if (x < other.x+sprite_width/2)
            hspeed = -1;        
    }
}

