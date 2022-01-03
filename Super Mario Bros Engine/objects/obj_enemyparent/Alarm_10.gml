/// @description Move towards the player

//If the enemy is not moving
if (hspeed == 0) {

    //If the player does not exist
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Double speed if you chose hard mode
if (global.hardmode == 1)
    hspeed = hspeed*2;

