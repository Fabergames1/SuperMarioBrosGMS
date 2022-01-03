/// @description Handle Mario's animation

//Reset firing state
if (firing > 0)
&& (state > cs_walk)
    firing = 0;
    
//If Mario is crouched down
if (crouch == true) {

    //Set the 'Pose' animation
    sprite_index = scr_mario_pose();
    
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

//Otherwise if Mario is not crouched down
else if (crouch == false) {

    //If Mario has the fire powerup and he is shooting a fireball
    if (global.powerup == cs_fire)
    && (firing > 0) {

        //Set 'Pose' sprite
        sprite_index = scr_mario_pose();
        
        //Decrement firing
        firing--;
        
        //Do not animate
        image_speed = 0;
        image_index = 4;        
    }
    
    //Otherwise, perform regular animation
    else {

        //If Mario is idling
        if (state == cs_idle) {
        
            //Set 'Walk' sprite
            sprite_index = scr_mario_stand();
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if Mario is walking
        else if (state == cs_walk) {
        
            //Check first the facing direction of Mario and it's facing direction and set a 'Skid' pose if so
            if (((hspeed > 0.1) && (xscale == -1))
            || ((hspeed < -0.1) && (xscale == 1)))
            && (swimming == false) {
            
                //Set 'Stand' sprite
                sprite_index = scr_mario_skid();
                
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
                sprite_index = scr_mario_walk();
                
                //Set the animation speed
                image_speed = 0.065+abs(hspeed)/7.5;
            }
        }
    }
    
    //Otherwise, if Mario is jumping or falling
    if (statedelay > 0) 
    || (state == cs_jump) {
    
        //If Mario is swimming
        if (swimming == true) {
        
            //Set 'Swim' pose
            sprite_index = scr_mario_swim();
            
            //If not moving up
            if (vspeed < 0)
                image_speed = 0.2;
            
            //Otherwise, if not moving up
            else {
            
                image_speed = 0;
                image_index = 0;
            }
        }
        
        //Otherwise, if Mario is not swimming
        else if (swimming == false) {
        
            //Stop 'Skid' sound
            if (audio_is_playing(snd_skid))
                audio_stop_sound(snd_skid);
        
            //Do not animate
            image_speed = 0;            
            
            //Set 'Jump' pose if jumping
            if (jumping > 0)
                sprite_index = scr_mario_jump();
            else if (sprite_index != scr_mario_skid())
                sprite_index = scr_mario_walk();
        }
    }
    
    //Otherwise, if Mario is climbing
    else if (state == cs_climb) {
    
        //Set 'Climb' sprite
        sprite_index = scr_mario_climb();
        
        //If moving
        if (vspeed != 0) 
            image_speed = 0.15;
            
        //Otherwise, if not moving
        else {
        
            image_speed = 0;
            image_index = 0;
        }
    }
    
    //If Mario is not small
    if (global.powerup != cs_small)
        mask_index = spr_mask_big;
        
    //Otherwise, if Mario is small
    else
        mask_index = spr_mask;
    
    //Stop the 'Skid' sound when not changing direction.
    if (sprite_index != scr_mario_skid())
    && (audio_is_playing(snd_skid))
        audio_stop_sound(snd_skid);
}

