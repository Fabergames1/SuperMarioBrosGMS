/// @description Item sprout logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If there's not a solid in position
if (!collision_point(x,bbox_bottom-1,obj_solid,0,0)) {

    //Create a item out of the sprite.
    with (sprite_make_object(x,y,sprite_index)) {
    
        image_speed = other.image_speed;
        image_index = other.image_index;
        alarm[10] = 1;
    }
    
    //Destroy
    instance_destroy();
}

