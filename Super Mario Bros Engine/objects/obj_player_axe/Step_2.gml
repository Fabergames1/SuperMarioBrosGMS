/// @description Player animation

//If there's ground below
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_solid, 0, 0)) {

    if (hspeed == 0) {
    
        //Do not animate.
        image_speed = 0;
        image_index = 0;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = scr_mario_walk();
        else
            sprite_index = scr_luigi_walk();
    }
    else {
    
        //Animate it.
        image_speed = 0.2;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = scr_mario_walk();
        else
            sprite_index = scr_luigi_walk(); 
    }
}

//Otherwise, jump
else {

    //Do not animate.
    image_speed = 0;
    image_index = 0;
    
    //Set the sprite
    if (global.player == 0)
        sprite_index = scr_mario_jump();
    else
        sprite_index = scr_luigi_jump();  
}

