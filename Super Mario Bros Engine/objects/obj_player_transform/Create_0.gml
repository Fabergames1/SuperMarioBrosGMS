/// @description The player got a powerup, change him.

//Sets the animation sequences
ready = 0;

//Whether the animation loops
loop = 0;

//Set the animation to use
//0: Small to Super
//1: Super to Fire
//2: Powerdown
sequence = 0;

//Make the player invisible
if (instance_exists(obj_playerparent)) {

    //Make the player invisible
    obj_playerparent.visible = false;
    
    //Snap into position
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Hereby the player's facing direction
    image_xscale = obj_playerparent.xscale;
    
    _hspeed = obj_playerparent.hspeed
    _vspeed = obj_playerparent.vspeed
}
    
//Make water invisible for a moment
if (instance_number(obj_water) > 0)
    with (obj_water) visible = false;

//Start animation
alarm[0] = 1;

