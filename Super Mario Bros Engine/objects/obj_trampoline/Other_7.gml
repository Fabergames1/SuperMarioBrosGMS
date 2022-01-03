/// @description Restart up animation

if (sprite_index == spr_trampoline) {

    //If the spring is about to launch the player upwards.
    if (s_ready == 1) {
    
        //If Mario does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play spring sound.
            audio_play_sound(snd_trampoline, 0, false);
            
            //Set the player vertical speed
            obj_playerparent.vspeed = -5.925;
                        
            //Force player jump
            obj_playerparent.state = cs_jump;
            
            //Move up
            obj_playerparent.y -= 8;
            
            //Check if 'Shift' is pressed.
            if (keyboard_check(vk_shift))
                obj_playerparent.jumping = 1;
            else
                obj_playerparent.jumping = 2;
        }
    }
    
    //Allow use
    ready = 0;
    alarm[0] = 8;
    
    //Set animation
    image_speed = 1;
    image_index = 0;
    
    //Set trampoline end sequence
    sprite_index = spr_trampoline_end;
}
else if (sprite_index == spr_trampoline_end) {

    //Set the sprite
    sprite_index = spr_trampoline;

    //Restart animation
    image_speed = 0;
    image_index = 0;
}

