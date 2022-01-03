/// @description Move towards the player

//If the player does not exist or the player is above
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.y < y)
    dir = -1;
else
    dir = 1;

