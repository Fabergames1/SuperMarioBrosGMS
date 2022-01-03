/// @description Player Behaviour

//Figure out player's state
if ((collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_solid,0,0))
|| (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_platformparent,0,0)))
&& (gravity == 0) {

    //If not moving upwards
    if (vspeed >= 0) {
    
        //Figure out if the player is idling or walking
        if (hspeed == 0)
            state = cs_idle;
        else
            state = cs_walk;
            
        //Reset jump delay
        statedelay = 0;
    }
    
    //Otherwise, if moving up
    else if (vspeed < 0)
        state = cs_jump;
}

//Otherwise, if there's no ground below the player
else {

    if (statedelay > 4)
        state = cs_jump;
    else
        statedelay++;
}

//Prevent the player from falling too fast
if (vspeed > 4)
    vspeed = 4;
    
//Set up the maximum horizontal speed
if (keyboard_check(vk_control)) 
    hspeedmax = maxspd;
else
    hspeedmax = minspd;
    
//If the controls are not disabled or the player is stuck in a wall
if (inwall == false)
&& (disablecontrol == false) {

    //If the 'Shift' key is pressed and the player can jump
    if (keyboard_check_pressed(vk_shift))
    && ((jumping == 0) 
    && (state < cs_jump)) 
    && (!collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom+5,obj_trampoline,0,0)) {
    
        //Play 'Jump' sound
        audio_play_sound(snd_jump, 0, false);
        
        //Variable jump
        jumping = 1;         
        
        //Force jump state
        state = cs_jump;        
                 
        //Set the vertical speed
        vspeed = -jumpstr+abs(hspeed)/7.5*-1;
    }
    
    //Check if the player should still be variable jumping
    if (keyboard_check_released(vk_shift))
    && (jumping == 1)
        jumping = 2;
    
    //Allow the player to move or not
    event_user(2);
    
    //If the 'Right' key is pressed and the player can move on it's own
    if (keyboard_check(vk_right)) 
    && (move == true) 
    && (!keyboard_check(vk_left)) {
            
        //Check up the player's horizontal speed
        if (hspeed < hspeedmax) {
        
            //If the player horizontal speed is equal or greater than 0, accelerate slower.
            if (hspeed >= 0) {
                
                if ((state == cs_jump)
                || (statedelay > 0))
                && (xscale = -1)
                    hspeed += acc/1.5;
                else
                    hspeed += acc;
            }
                
            //Otherwise, accelerate a bit faster
            else if (hspeed < 0) {
            
                //Double acceleration if skidding
                if (sprite_index == scr_mario_skid)
                || (sprite_index == scr_luigi_skid)
                    hspeed += accskid*1.25;
                else
                    hspeed += accskid;
            }
        }
        
        //If the player is not overlapping a wall, set the facing direction
        if (!collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_top+4,obj_solid,0,0))
        && ((state != cs_jump)
        || (statedelay == 0))
            xscale = 1;
    }
    
    //Otherwise if the 'Left' key is pressed and the player can move on it's own
    else if (keyboard_check(vk_left))
    && (move == true)
    && (!keyboard_check(vk_right)) {
            
        //Check up the player's horizontal speed
        if (hspeed > hspeedmax*-1) {
                
            //If the player horizontal speed is equal or lower than 0, accelerate slower.
            if (hspeed <= 0) {
            
                if ((state == cs_jump)
                || (statedelay > 0))
                && (xscale = 1)
                    hspeed -= acc/1.5;
                else
                    hspeed -= acc;
            }
                
            //Otherwise, accelerate a bit faster
            else if (hspeed > 0) {
            
                //Double acceleration if skidding
                if (sprite_index == scr_mario_skid)
                || (sprite_index == scr_luigi_skid)
                    hspeed -= accskid*1.25;
                else
                    hspeed -= accskid;
            }       
        }
        
        //If the player is not overlapping a wall, set the facing direction
        if (!collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_top+4,obj_solid,0,0))
        && ((state != cs_jump)
        || (statedelay == 0))
            xscale = -1;
    }
    
    //Otherwise, if neither 'Right' or 'Left' are pressed and the player is on the ground
    else if (gravity == 0) {
    
        //If the player is not crouched down
        if (crouch == false) {
        
            //Reduce the player's horizontal speed
            hspeed = max(0, abs(hspeed)-dec)*sign(hspeed);
            
            //Slowdown until the player stops
            if (hspeed < dec) && (hspeed > -dec)
                hspeed = 0; 
        }
        
        //Otherwise if the player is crouched down, slowdown slower
        else if (crouch == true) {
        
            //Reduce the player's horizontal speed
            hspeed = max(0, abs(hspeed)-decskid)*sign(hspeed);
            
            //Slowdown until the player stops
            if (hspeed < decskid) && (hspeed > -decskid)
                hspeed = 0; 
        }
    }
}

//Otherwise if controls are disabled or the player is stuck in a wall.
else if (gravity == 0) {

    //If the player is not crouched down
    if (crouch == false) {
    
        //Reduce the player's horizontal speed
        hspeed = max(0, abs(hspeed)-dec)*sign(hspeed);
        
        //Slowdown until the player stops
        if (hspeed < dec) && (hspeed > -dec)
            hspeed = 0; 
    }
    
    //Otherwise if the player is crouched down, slowdown slower
    else if (crouch == true) {
    
        //Reduce the player's horizontal speed
        hspeed = max(0, abs(hspeed)-decskid)*sign(hspeed);
        
        //Slowdown until the player stops
        if (hspeed < decskid) && (hspeed > -decskid)
            hspeed = 0; 
    }    
}

//Prevent the player from moving too fast if not jumping
if (state != cs_jump) {

    //Check the horizontal speed when moving to the right.
    if (hspeed > hspeedmax)
        hspeed = hspeedmax;
        
    //Check the horizontal speed when moving to the left.
    else if (hspeed < hspeedmax*-1)
        hspeed = hspeedmax*-1
}

//If the player is jumping
if (statedelay > 0)
|| (state == cs_jump) {

    //If the player is not jumping, descend slowly
    if (jumping == 0)
    && (statedelay < 4)
        gravity = grav_alt/8;
    
    else {
        //Variable jumping
        if (vspeed < -2) 
        && (jumping == 1)
            gravity = grav_alt;
        
        //Otherwise, use default gravity.     
        else {
            
            //Use default gravity
            gravity = grav;
                    
            //End variable jumping if it never ends manually.
            if (jumping = 1)
                jumping = 2;
        }
    }
}

//Check for a climbing surface
var climb1 = collision_point(x,y,obj_climb,0,0);
var climb2 = collision_point(x,y+15,obj_climb,0,0);

//If there's a climbable surface
if (climb1)
&& (climb2)
&& (canhang == 0)
&& (disablecontrol == false) {
        
    //If the horizontal speed is greater than 0, face to the right
    if (hspeed > 0) {
    
        xscale = 1;
        x = climb1.x+8;
    }
        
    //Otherwise, if the horizontal speed is lower than 0, face to the left
    else if (hspeed < 0) {
    
        xscale = -1;
        x = climb1.x+8;
    }
    
    //Force set 'Climb' state
    state = cs_climb;
    
    //Stop
    speed = 0;
    gravity = 0; 
    
    //Hang in
    canhang = 1;
    
    //Allow turning
    alarm[2] = 8;
}

