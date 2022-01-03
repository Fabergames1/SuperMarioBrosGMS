/// @description Move towards the player

//If the enemy is not moving
if (hspeed == 0) {

    //If the player does not exist
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.25;
    else
        hspeed = 0.25;
}

