/// @description Go to the level start screen

//Deactivate pixelation
with (obj_persistent) tr_pixel = false;

//If there's lives left
if (lives > 0) {
    
    if (obj_levelcontrol.leveltime > 0)
    && (global.time == 0)
        room_goto(rm_timeup);
    else
        room_goto(rm_levelstart);
}

