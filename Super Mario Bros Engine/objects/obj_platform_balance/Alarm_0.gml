/// @description Create the right pulley platform.

parent = instance_create(rx,ry,obj_platform_balance_r)
with (parent) {

    //Set this object as the parent of the created platform.
    parent = other.id;
    
    //Set the limit of the created platform the same as this platform.
    limit = other.limit;
    
    //Set the same sprite as this platform
    sprite_index = other.sprite_index;
}

