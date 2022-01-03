/// @description Water logic

//Animate background
anim += 0.1;

//Prevent the player from going outside the water
if (instance_exists(obj_playerparent)) {

    //If the player is above the water top, prevent him from exiting it.
    if (obj_playerparent.y < y) {
    
        obj_playerparent.y++;
        obj_playerparent.vspeed = 0;
    }
}

