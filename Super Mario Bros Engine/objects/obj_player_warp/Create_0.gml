/// @description The player when it's warping through a pipe

//Set the depth
depth = 10;

//Don't stop warping yet
ready = 0;
alarm[0] = 10;

//Delay movement
delay = 0;

//Facing direction
xscale = 1;

//Set up sprite and palette
if (global.player == 0) {
    
    //If moving horizontally
    if (hspeed != 0) {
    
        sprite_index = scr_mario_walk();
        image_speed = 0.15;
    }
        
    //If not moving horizontally
    else {
    
        //If moving up
        if (vspeed < 0) {
        
            sprite_index = scr_mario_walk();
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if moving down
        else if (vspeed > 0) {
        
            sprite_index = scr_mario_pose();
            image_speed = 0;
            image_index = 3;
        }
    }
    
    //Set palette
    palette_index = pal_mario;
}
else {
    
    //If moving horizontally
    if (hspeed != 0) {
    
        sprite_index = scr_luigi_walk();
        image_speed = 0.15;
    }
        
    //If not moving horizontally
    else {
    
        //If moving up
        if (vspeed < 0) {
        
            sprite_index = scr_luigi_walk();
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if moving down
        else if (vspeed > 0) {
        
            sprite_index = scr_luigi_pose();
            image_speed = 0;
            image_index = 3;
        }
    }
    
    //Set palette
    palette_index = pal_luigi;
}

//Is the player invincible?
isflashing = 0;
alarm[1] = 1;

