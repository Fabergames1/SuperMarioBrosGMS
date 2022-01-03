/// @description Set the target

//If the player is the player object
if (instance_exists(obj_playerparent))
    target = obj_playerparent;
    
//Otherwise, if the player is climbing down a flagpole
else if (instance_exists(obj_player_goal))
    target = obj_player_goal;
    
//Otherwise, no target
else
    target = noone;

