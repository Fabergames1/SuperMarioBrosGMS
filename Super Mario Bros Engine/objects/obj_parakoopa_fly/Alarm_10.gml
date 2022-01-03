/// @description Move towards the player

//Set the vertical speed
vspeed = 0.5;

//If the player does not exist or the player is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    dir = -1;
else
    dir = 1;

