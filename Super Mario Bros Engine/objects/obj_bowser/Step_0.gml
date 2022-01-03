/// @description Bowser logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If the axe exists
if (instance_exists(obj_axe)) {

    //If the axe is visible
    if (obj_axe.visible == true) {
    
        //If the player exists
        if (instance_exists(obj_playerparent)) {
        
            //If the player is at the right
            if (obj_playerparent.x > x) {

                //Check if bowser is not breathing fire
                if (sprite_index == spr_bowser)
                && (vspeed == 0) {
                
                    hspeed = 0.45;
                    xscale = 1;
                    if (x > obj_axe.x-16)
                        x = obj_axe.x-16;
                }
                else {
                
                    //If there's no previous hspeed
                    if (prevhspeed == 0) {
                    
                        prevhspeed = hspeed;
                    }
                    hspeed = 0;
                }
            }
            
            //Otherwise
            else {
            
                //Look always at the left
                xscale = -1;
            
                //If bowser is breathing fire, stop
                if (sprite_index == spr_bowser) {
                
                    //If not moving
                    if (prevhspeed != 0) {
                                   
                        hspeed = prevhspeed;
                        prevhspeed = 0;
                    }
                    
                    //Otherwise, 
                    else {
                    
                        //Manage direction
                        if (hspeed > 0) {
                        
                            hspeed = 0.3;
                            if (x > xstart)
                                hspeed = -hspeed;
                        }
                        else if (hspeed < 0) {
                        
                            hspeed = -0.3;
                            if (x < xstart-144)             
                                hspeed = -hspeed;
                        }
                    }
                }
                else {
                
                    //Stop moving
                    if (prevhspeed == 0) {
                    
                        prevhspeed = hspeed;
                    }
                    hspeed = 0;
                }
            }
        }
        
        //Inherit event
        event_inherited();
        
        //Set gravity when not jumping
        if (gravity > 0)
            gravity = 0.075;
            
        //Otherwise
        else {
        
            if (jumping == 1) {
            
                jumping = 0;
                alarm[0] = 90;
            }
        }
    }
    
    //Otherwise, if the axe is not visible
    else {
    
        //Set the sprite
        sprite_index = spr_bowser_dead;
        
        //Animate
        image_speed = 0.2;
    
        //If there's still a bridge
        if (instance_number(obj_bridge) > 0) {
                
            //Stop movement
            speed = 0;
            gravity = 0;
            
            //Look to the right
            xscale = 1;
        }
        
        //Otherwise, fall down to the lava pit
        else {
        
            //Set the gravity
            gravity = 0.075;
            
            //Check for lava
            var lava = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_lava, 0, 0);
            
            //If there's lava
            if (lava)
            && (vspeed > 0.75) {
            
                //Set the vertical speed
                vspeed = 0.75;    
                
                //If not inside lava
                if (inlava == 0) {
                
                    //Play 'Bowser Lava' sound
                    audio_play_sound(snd_bowser_lava, 0, false);
                
                    //Inside lava
                    inlava = 1;
                    
                    //Create lava splash
                    with (instance_create(x-8,lava.bbox_top-12,obj_smoke)) {
                    
                        sprite_index = spr_lavasplash;
                        image_speed = 0.3;
                    }                    
                }            
            }          
        }
    }
}

//Cooldown hurt
if (cooldown > 0)
    cooldown--;

