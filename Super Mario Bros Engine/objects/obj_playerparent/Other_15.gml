/// @description Player Behaviour (Swim)

//Reset variables
event_user(15);

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
    
//Make the player get up if jumping and crouched down
if ((crouch == true) && (state == cs_jump))
    crouch = false;
    
//If the controls are not disabled or the player is stuck in a wall
if (inwall == false)
&& (disablecontrol == false) {

    //Prevent the player from swimming too fast.
    if (vspeed < -2) 
        vspeed = -2;
        
    //Prevent the player from diving too fast.
    if (vspeed > 4)
        vspeed = 4;
    
    //Set up the maximum horizontal speed.
    if (state == cs_jump)
        hspeedmax = 2;
    else
        hspeedmax = 0.5;
        
    //If the player presses the 'Shift' key.
    if (keyboard_check_pressed(vk_shift)) 
    && (!collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom+5,obj_trampoline,0,0)) {
    
        //Play 'Swim' sound
        audio_play_sound(snd_swim, 0, false);
    
        //Force 'Jump' state
        state = cs_jump;
        
        //If the player is on contact with a current object
        if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_current,0,0))
            vspeed = -2.5;
        else
            vspeed -= 1.5;
    }
    
    //If the player presses the 'Right' key and the 'Left' key is not held.
    if (keyboard_check(vk_right)) 
    && (!crouch)
    && (!keyboard_check(vk_left)) {
        
        //Set the facing direction
        xscale = 1;
        
        //If there's NOT a wall on the way.
        if (!collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0)) {
        
            //Set the horizontal speed.
            if (hspeed >= 0) //If the player horizontal speed is equal/greater than 0.        
                hspeed += acc_swim;
            
            //Otherwise, If the player horizontal speed is lower than 0.
            else         
                hspeed += acc_swim*2;
        }
    }
    
    //If the player presses the 'Left' key and the 'Right' key is not held.
    else if (keyboard_check(vk_left)) 
    && (!crouch)
    && (!keyboard_check(vk_right)) {
        
        //Set the facing direction
        xscale = -1;
        
        //If there's NOT a wall on the way.
        if (!collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0)) {
        
            //Set the horizontal speed.
            if (hspeed <= 0) //If the player horizontal speed is equal/lower than 0.        
                hspeed += -acc_swim;
                
            //Otherwise, If the player horizontal speed is greater than 0. 
            else        
                hspeed += -acc_swim*2;
        }      
    }
    
    //Otherwise, if neither of the 'Left' key or 'Right' key is not held.
    else if (vspeed == 0) { //If the player is on the ground.
    
        //Reduce the player speed until he stops.
        hspeed = max(0,abs(hspeed)-dec_swim)*sign(hspeed);
        
        //Set up horizontal speed to 0 when hspeed hits the value given on 'dec_swim'.
        if ((hspeed < dec_swim) && (hspeed > -dec_swim))      
            hspeed = 0;     
    }
}

//Otherwise, If the player controls are disabled.
else if (disablecontrol) {

    //Reduce the player speed until he stops.
    hspeed = max(0,abs(hspeed)-dec_swim)*sign(hspeed);
    
    //Set up horizontal speed to 0 when hspeed hits the value given on 'dec_swim'.
    if ((hspeed < dec_swim) && (hspeed > -dec_swim))    
        hspeed = 0;        
}

//Prevent the player from sliding too fast.
if (hspeed > hspeedmax)
    hspeed = hspeedmax;
if (hspeed < -hspeedmax)
    hspeed = -hspeedmax;
    
//Apply ygrav
if ((state == cs_jump) || (statedelay > 0))
    gravity = grav_swim;

