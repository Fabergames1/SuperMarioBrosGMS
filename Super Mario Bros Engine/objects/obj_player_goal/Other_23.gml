/// @description Animate

//When on flagpole
if (ready < 2) {

    //Animate
    if (vspeed > 0)
        image_speed = 0.15;
    else {
    
        image_speed = 0;
        image_index = 0;
    }
    
    //Set climbinb pose
    if (global.player == 0)
        sprite_index = scr_mario_climb();
    else
        sprite_index = scr_luigi_climb();
    
}

//When not on flagpole
else {

    //When on the ground, use walking sprite.
    if (gravity = 0) { 
    
        if (hspeed == 0) {
        
            //Set idle pose
            image_speed = 0;
            if (alarm[3] > 40)
                image_index = 1;
            else
                image_index = 2;
            
            //Set the sprite
            if (global.player == 0)
                sprite_index = scr_mario_pose();
            else
                sprite_index = scr_luigi_pose();
            
        }
        else {
        
            //Animate
            image_speed = 0.065+abs(hspeed)/7.5;
            
            //Set walking pose
            if (global.player == 0)
                sprite_index = scr_mario_walk();
            else
                sprite_index = scr_luigi_walk();            
        }
    }
    
    //Otherwise
    else {
    
        //Use the correct image index
        image_index = 0;        
        
        //Use the jump sprite
        if (global.player == 0)
            sprite_index = scr_mario_jump();
        else
            sprite_index = scr_luigi_jump();
    }
}

