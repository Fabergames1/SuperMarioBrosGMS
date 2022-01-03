/// @description Remove sprouting and active powerups

//Remove powerups that are sprouting
if (instance_exists(obj_powerupsprout)) 
    with (obj_powerupsprout) instance_destroy();
    
//Remove powerups that are moving
if (instance_exists(obj_powerupparent))
    with (obj_powerupparent) instance_destroy();

