/// @description Set up animation sequence and take up a screenshot.

//Deactivate all instances.
/*instance_deactivate_all(true);

tile_layer_hide(15)
tile_layer_hide(12)
tile_layer_hide(9)

//Activate persistent object.
instance_activate_object(obj_persistent);*/

//Set the animation sequence.
switch (sequence) {

    //Small -> Super
    case (0): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerup;
        else
            sprite_index = spr_luigi_powerup;
    } break;
    
    //Super -> Fire
    case (1): {
    
        //Animate
        image_speed = 0.4;
        
        //Loop 6 times
        loop = 6;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerup2;
        else
            sprite_index = spr_luigi_powerup2;
    } break;
    
    //Super -> Small
    case (2): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerdown;
        else
            sprite_index = spr_luigi_powerdown;
    } break;
    
    //Fire -> Small
    case (3): {
    
        //Animate
        image_speed = 0.25;
        
        //Set the sprite
        if (global.player == 0)
            sprite_index = spr_mario_powerdown2;
        else
            sprite_index = spr_luigi_powerdown2;
    } break;
}

//Animation has been set.
ready = 1;

//Make the object visible.
visible = 1;

/* */
/*  */
