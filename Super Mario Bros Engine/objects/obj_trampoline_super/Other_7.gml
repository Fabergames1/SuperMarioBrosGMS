/// @description Restart up animation

if (sprite_index == spr_trampoline_super) {

    //If the spring is about to launch the player upwards.
    if (s_ready == 1) {
    
        //If the player does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play 'Trampoline' sound
            audio_play_sound(snd_trampoline, 0, false);
            
            //If 'Shift' is pressed
            if (keyboard_check(vk_shift)) {
            
                //Set the player vertical speed
                obj_playerparent.vspeed = -32;
                
                //Get launched
                obj_playerparent.inair = 1;
            }
            else {            
            
                //Set the player vertical speed
                obj_playerparent.vspeed = -5.925;                  
            }
            
            //Move up
            obj_playerparent.y -= 8;
            
            //Force no-jumping
            obj_playerparent.jumping = 2;
            
            //Force player jump
            obj_playerparent.state = cs_jump;               
        }
    }
    
    //Allow use
    ready = 0;
    alarm[0] = 8;
    
    //Set animation
    image_speed = 1;
    image_index = 0;
    
    //Set trampoline end sequence
    sprite_index = spr_trampoline_super_end;
}
else if (sprite_index == spr_trampoline_super_end) {

    //Set the sprite
    sprite_index = spr_trampoline_super;

    //Restart animation
    image_speed = 0;
    image_index = 0;
}

