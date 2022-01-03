/// @description Create cinder effect

//Repeat the process.
alarm[3] = 4;

//If the vertical speed is lower than 0.
if (vspeed < 0) {

    //Create cinder effect.
    with (instance_create(x+random_range(-4,4),y+12,obj_smoke)) {
    
        //Set the gravity
        gravity = 0.4;
        
        //Set the animation
        image_speed = 0.1;
        
        //Set the effect sprite
        sprite_index = spr_cinder;
    }
}

