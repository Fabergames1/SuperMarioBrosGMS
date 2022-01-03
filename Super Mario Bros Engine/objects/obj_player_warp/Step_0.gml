/// @description Player pipe logic

//If the player is moving vertically
if (vspeed != 0) {

    //If moving down
    if (vspeed > 0) {
    
        //Set the animation
        image_speed = 0;
        image_index = 3;
        
        //Set the sprite based on the player
        if (global.player == 0)
            sprite_index = scr_mario_pose();
        else
            sprite_index = scr_luigi_pose();        
    }
    else {
    
        //Set the animation
        image_speed = 0;
        image_index = 0;
        
        //Set the sprite based on the player
        if (global.player == 0)
            sprite_index = scr_mario_walk();
        else
            sprite_index = scr_luigi_walk();             
    }
}
    
//Otherwise, if the player is moving horizontally
else {

    //Set the animation
    image_speed = 0.15;

    //Set the animation
    if (global.player == 0)
        sprite_index = scr_mario_walk();
    else
        sprite_index = scr_luigi_walk();       
}

//Update boundary and facing direction
event_user(1);

//If the movement is not delayed
if (delay == 0) {

    //Make the player move slower/faster.
    if (collision_point(x-8,y+boundary,obj_solid,0,0))
    && (collision_point(x+7,y+boundary,obj_solid,0,0))
    && (collision_point(x-8,bbox_bottom,obj_solid,0,0))
    && (collision_point(x+7,bbox_bottom,obj_solid,0,0))    
        speed = 3;
    
    else {
    
        //Play a sound if the player is about to exit a pipe.
        if (speed == 3) {
        
            audio_play_sound(snd_warp, 0, false);
        }
    
        //Set the speed of the player
        if (direction == 90)
            speed = 1;
        else
            speed = 0.5;
    }
    
    //Make the player exit the pipe.
    if (ready)
    && (!collision_rectangle(x-8,y+boundary,x+7,bbox_bottom,obj_solid,0,0))
        event_user(0);
}

//Make invisible if moving horizontally
if (direction == 0) || (direction == 180) {

    if (speed == 3)
        visible = 0;
    else
        visible = 1;
}
else
    visible = 1;

