/// @description Jump upwards / downwards

//If there's a row of blocks above and below the hammer bro.
if (collision_rectangle(bbox_left,bbox_top-40,bbox_right,bbox_top-40,obj_blockparent,0,0))
&& (collision_rectangle(bbox_left,bbox_bottom+8,bbox_right,bbox_bottom+8,obj_blockparent,0,0)) {

    //Set the vertical speed
    if (floor(random(50)) < 25) {
    
        vspeed = -6;
        alarm[4] = 2;
        alarm[5] = 16;
    }
    else {
    
        vspeed = -2.5;
        alarm[4] = 2;
        alarm[5] = 35;
    }
}

//Otherwise, check where's the blocks and jump up or down.
else {

    //If the blocks are above
    if (collision_rectangle(bbox_left,bbox_top-40,bbox_right,bbox_top-40,obj_blockparent,0,0)) {
    
        vspeed = -6;
        alarm[4] = 2;
        alarm[5] = 16;
    }
    
    //Otherwise, if they are below
    else if (collision_rectangle(bbox_left,bbox_bottom+8,bbox_right,bbox_bottom+8,obj_blockparent,0,0)) {
    
        vspeed = -2.5;
        alarm[4] = 2;
        alarm[5] = 35;
    }
    else
        vspeed = -6;
}

//Boost jump
y--;

//Gravity
gravity = 0.25;

//Jump again
alarm[1] = 168;

