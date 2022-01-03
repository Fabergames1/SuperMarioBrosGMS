/// @description Parakoopa logic

//Inherit default event
event_inherited();

//Jump when in contact with the floor
if (!instance_exists(obj_player_dead)) {
    
    if (gravity == 0) {
    
        vspeed = -3.5;
        y--;
    }
    else
        gravity = 0.15;
}

