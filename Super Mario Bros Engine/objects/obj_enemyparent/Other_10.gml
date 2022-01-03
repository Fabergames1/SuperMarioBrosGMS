/// @description Default enemy dead script

//Create dead object
imdead = instance_create(x,y,obj_enemy_dead);

//Make the dead object hereby the sprite
imdead.sprite_index = sprite_index;

//Make the dead object hereby the scale
imdead.image_xscale = xscale;

//Set the hspeed of the dead object
if (other.hspeed == 0) {

    //If the kill object is at the left of this object
    if (other.bbox_left+other.bbox_right/2 < bbox_left+bbox_right/2)
        imdead.hspeed = 1;
    else
        imdead.hspeed = -1;
}
else {

    if (other.hspeed > 0)
        imdead.hspeed = 1;
    else if (other.hspeed < 0)
        imdead.hspeed = -1;
}

//Destroy
instance_destroy();

