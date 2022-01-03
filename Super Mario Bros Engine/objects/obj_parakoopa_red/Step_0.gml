/// @description Flying red parakoopa logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If the parakoopa is moving down
if (dir == 1) {
    
    //Cap horizontal speed.
    if (vspeed > 1)
        vspeed = 1;
        
    //Change direction.
    if (y > ystart+40)
        dir = -1;
}

//Otherwise, if the parakoopa is moving up
else if (dir == -1) {

    //Cap horizontal speed.
    if (vspeed < -1)
        vspeed = -1;
        
    //Change direction.
    if (y < ystart-40)
        dir = 1;
}

//Increment / Decrement speed.
vspeed += 0.02*sign(dir);

//Set up the facing direction.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

