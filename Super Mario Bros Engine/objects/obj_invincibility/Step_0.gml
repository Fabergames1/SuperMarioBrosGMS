/// @description Invincibility logic

if (instance_exists(obj_playerparent)) {

    //Snap into the player position
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Make sure the player is invincible
    with (obj_playerparent) {
    
        if (!invulnerable) {
        
            invulnerable = true;
            alarm[0] = -1;
            alarm[1] = -1;
        }
    }
    
    //Hereby the same mask as the player
    mask_index = obj_playerparent.mask_index;
}

