/// @description Default enemy dead script

//Create koopa shell
imdead = instance_create(x,y-2,obj_shell);

//Make the dead object hereby the sprite
imdead.sprite_index = spr_shell_buzzy;

//Make the dead object hereby the scale
imdead.image_xscale = 1;

//Flip the shell
imdead.flip = 1;

//Set the vertical speed
imdead.vspeed = -3;

//Set the hspeed of the dead object
if (other.hspeed == 0) {

    //If the kill object is at the left of this object
    if (other.bbox_left+other.bbox_right/2 < bbox_left+bbox_right/2)
        imdead.hspeed = 0.8;
    else
        imdead.hspeed = -0.8;
}
else {

    if (other.hspeed > 0)
        imdead.hspeed = 0.8;
    else if (other.hspeed < 0)
        imdead.hspeed = -0.8;
}

//Destroy
instance_destroy();

