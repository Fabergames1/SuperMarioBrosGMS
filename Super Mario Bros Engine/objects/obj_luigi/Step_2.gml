/// @description Handle Luigi's animation

//Reset firing state
if (firing > 0)
&& (state > cs_walk)
    firing = 0;
    
//If Luigi is crouched down
if (crouch == true) {

    //Set the 'Pose' animation
    sprite_index = scr_luigi_pose();
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Reset firing
    firing = 0;
    
    //Set the mask
    mask_index = spr_mask;
    
    //Stop 'Skid' sound
    if (audio_is_playing(snd_skid))
        audio_stop_sound(snd_skid);
}

//Otherwise if Luigi is not crouched down
else if (crouch == false) {

    //If Luigi has the fire powerup and he is shooting a fireball
    if (global.powerup == cs_fire)
    && (firing > 0) {

        //Set 'Pose' sprite
        sprite_index = scr_luigi_pose();
        
        //Decrement firing
        firing--;
        
        //Do not animate
        image_speed = 0;
        image_index = 4;        
    }
    
    //Otherwise, perform regular animation
    else {

        //If Luigi is idling
        if (state == cs_idle) {
            
                //Set 'Stand' sprite
                sprite_index = scr_luigi_stand();
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
        }
        
        //Otherwise, if Luigi is walking
        else if (state == cs_walk) {
        
            //Check first the facing direction of Luigi and it's facing direction and set a 'Skid' pose if so
            if (((hspeed > 0.1) && (xscale == -1))
            || ((hspeed < -0.1) && (xscale == 1)))
            && (swimming == false) {
            
                //Set 'Skid' sprite
                sprite_index = scr_luigi_skid();
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
                
                //Play 'Skid' sound
                if (!audio_is_playing(snd_skid))
                    audio_play_sound(snd_skid, 0, true);
            }
            
            //Otherwise set the 'Walk' pose
            else {
            
                //Set 'Walk' pose
                sprite_index = scr_luigi_walk();
                
                //Set the animation speed
                image_speed = 0.065+abs(hspeed)/7.5;
            }
        }
    }
    
    //Otherwise, if Luigi is jumping or falling
    if (statedelay > 0) 
    || (state == cs_jump) {
    
        //If Luigi is swimming
        if (swimming == true) {
        
            //Set 'Swim' pose
            sprite_index = scr_luigi_swim();
            
            //If not moving up
            if (vspeed < 0)
                image_speed = 0.2;
            
            //Otherwise, if not moving up
            else {
            
                image_speed = 0;
                image_index = 0;
            }
        }
        
        //Otherwise, if Luigi is not swimming
        else if (swimming == false) {
        
            //Stop 'Skid' sound
            if (audio_is_playing(snd_skid))
                audio_stop_sound(snd_skid);
        
            //Do not animate
            image_speed = 0;            
            
            //Set 'Jump' pose if jumping
            if (jumping > 0)
                sprite_index = scr_luigi_jump();
            else if (sprite_index != scr_luigi_skid())
                sprite_index = scr_luigi_walk();
        }
    }
    
    //Otherwise, if Luigi is climbing
    else if (state == cs_climb) {
    
        //Set 'Climb' sprite
        sprite_index = scr_luigi_climb();
        
        //If moving
        if (vspeed != 0) 
            image_speed = 0.15;
            
        //Otherwise, if not moving
        else {
        
            image_speed = 0;
            image_index = 0;
        }
    }
    
    //If Luigi is not small
    if (global.powerup != cs_small)
        mask_index = spr_mask_big;
        
    //Otherwise, if Luigi is small
    else
        mask_index = spr_mask;
    
    //Stop the 'Skid' sound when not changing direction.
    if (sprite_index != scr_luigi_skid())
    && (audio_is_playing(snd_skid))
        audio_stop_sound(snd_skid);
}

