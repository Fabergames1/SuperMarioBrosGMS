/// @description Player Logic

//Floor collision
if (vspeed >= 0) {

    //Check for the ground
    var semisolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_solid,0,0);
    
    //If there's ground to step in
    if (semisolid) 
    && (bbox_bottom < semisolid.yprevious+5) {
    
        //Stay above the ground
        y = semisolid.y-16;
        
        //Stop vertical speed
        vspeed = 0;
        gravity = 0;
        
        //Reset values
        event_user(15);
    }
    
    //Check for the ground
    var platform = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_platformparent,0,0);
    
    //If there's ground to step in
    if (platform) 
    && (bbox_bottom < platform.yprevious+5) {
    
        //Stay above the ground
        y = platform.y-16;
        
        //Stop vertical speed
        vspeed = 0;
        gravity = 0;
        
        //Reset values
        event_user(15);
    }
}

//If the player is not swimming
if (swimming == false) {

    //If the player is not climbing, set up 'Default' behaviour.
    if (state != cs_climb)
        event_user(3);
    
    //Otherwise if the player is climbing, set up 'Climbing' behaviour.
    else if (state == cs_climb)
        event_user(4);
}

//Otherwise if the player is swimming, set up 'Swimming' behaviour
else if (swimming == true)
    event_user(5);
    
//If the player is moving to the right and there's a wall on the way.
if (hspeed > 0) 
&& (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,0,0)) {

    //Stop horizontal speed
    hspeed = 0;
    
    //Prevent the player from getting embed on the wall
    while (collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,0,0))
    && (!collision_point(x,bbox_top+4,obj_solid,0,0))
        x--;
}

//Otherwise, if the player is moving to the left and there's a wall on the way.
else if (hspeed < 0)
&& (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,0,0)) {

    //Stop horizontal speed
    hspeed = 0;
    
    //Prevent the player from getting embed on the wall
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,0,0))
    && (!collision_point(x,bbox_top+4,obj_solid,0,0))
        x++;
}

//If the player is moving up
if (vspeed < 0) 
&& (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,1,0)) {

    //Prevent the player from getting embed on a ceiling
    if (state > cs_walk) {
    
        while (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,0,0))
            y++;
    }
            
    //Check for a item block
    var block = collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top,obj_blockparent,0,0);
    
    //If there's a item block in the way and this one can be hit
    if (block) 
    && (block.state == 0) {
    
        //With the block
        with (block) {
        
            //Block has been hit
            state = 1;
            
            //Bump the block
            vspeed = -2;
            
            //Perform block specific events
            event_user(0);
        }
    }
    
    //Stop vertical movement
    vspeed = 0;
    
    //Play 'Bump' sound if not climbing
    if (state == cs_jump)
        audio_play_sound(snd_bump, 0, false);
}

//If the player is not climbing
if (state != cs_climb) {

    //If the player control is not disabled and it is not jumping.
    if (state != cs_jump)
    && (disablecontrol == false) {
    
        //Make the player crouch down if the 'Down' key is held
        if (keyboard_check(vk_down))
        && (!crouch)
            crouch = true;
            
        //Otherwise, make the player get up
        else if (!keyboard_check(vk_down))
            crouch = false;
    }
    
    //Handles powerup specific projectiles
    if (keyboard_check_pressed(vk_control))
        alarm[11] = 1;
}

//Make the player get up
else {

    crouch = false;
}

//Check for a nearby swimming surface
var water = collision_rectangle(bbox_left,y-1,bbox_right,y,obj_swim,1,0);

//If the player is not swimming and makes contact with a water surface
if (water) 
&& (swimming == false) {
    
    //Halve current horizontal speed
    hspeed = hspeed/2.5;    
    
    //Make the player swim.
    swimming = true;
    
    //Make the player get up
    crouch = false;
                
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}

//Otherwise, if the player had enough swimming and wants to get out
else if (!water) 
&& (swimming == true) {

    //If there's not water above and there's not a solid on the way out
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,0,0)) {
    
        //If the player is moving up
        if (vspeed < 0) 
        && (state == cs_jump) 
        && (!instance_exists(obj_water)) {
        
            //If the 'Jump' key is pressed
            if (keyboard_check(vk_shift)) {
            
                //Play 'Jump' sound
                audio_play_sound(snd_jump, 0, false);
                
                //Make the player not swim
                swimming = false;
                
                //Allow variable jump
                jumping = 1;
                
                //Set the vertical speed
                vspeed = -jumpstr;
            }
            
            //Otherwise, if 'Shift' is not held.
            else {
            
                //If the player is moving up.
                if (vspeed < 0)
                    vspeed = 0;
            }
        }
    }
}
    
//Free the player is he is stuck on a solid.
if (vspeed == 0)
&& (crouch == false) 
&& (mask_index == spr_mask_big) {
    
    //If the player gets stuck
    if (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_top+4,obj_solid,0,0)) 
    && (inwall == 0) {
    
        //If the direction was not set
        if (direct2 == 0) {
        
            //Set it up
            direct2 = xscale;
        }
        
        //Begin movement
        inwall = 1;
        
        //Set the movement direction
        direct = -direct2;
    }
    
    //Otherwise, if the player gets stuck on a wall.
    else if (inwall == 1) {
        
        //Move the player until it's not embed in a wall.
        x += 1*sign(direct);       
        
        //If the player is not longer embed on a wall, make him able to move.
        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,1,0)) {
        
            inwall = 0;
            direct2 = 0;
        }
        
        //If the player collides with a wall while being stuck
        if (collision_rectangle(bbox_left,y+4,bbox_left,bbox_bottom-4,obj_solid,1,0))
        || (collision_rectangle(bbox_right,y+4,bbox_right,bbox_bottom-4,obj_solid,1,0))
            direct = -direct;
    }
}

//Fixes a bug when being hit while stuck
if (global.powerup == 0)
|| (crouch == 1) {

    inwall = 0;
    direct2 = 0;
}

//Unstuck in case of overlapping a solid completely
if (state < 2)
&& (inwall == 0)
    while (collision_rectangle(x-1,bbox_top,x+1,bbox_bottom,obj_solid,0,0))
        y--;
        
//If the player is not in contact with water.
if (!collision_rectangle(bbox_left,y,bbox_right,bbox_bottom,obj_swim,0,0))
&& (swimming == true)
    swimming = false;

//Prevent the player from going too high on the level
if (y < -96) {

    if (inair == false)
        y = -96;
}
    
//Otherwise, if he is falling.
else {

    //If the player has been launched with a trampoline.
    if (inair) {
    
        if (y > -96)
        && (vspeed > 0)
            inair = false;
    }

    //Make the player do stuff if he falls on a pit.
    else if ((bbox_bottom >= room_height+32) && (!instance_exists(obj_pitwarp))) {
    
        instance_create(x,y,obj_player_dead);
        instance_destroy();
        exit;
    }
}

