/// @description Destroy if sparkle

if (sprite_index == spr_sparkle) {

    //Create score effect
    with (instance_create(x,ystart,obj_score)) {
    
        sprite_index = spr_200pts;
        vspeed = -0.5;
    }
    
    //Destroy
    instance_destroy();
}

