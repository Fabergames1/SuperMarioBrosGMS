/// @description Cycle between palettes

//Make the player flash if he's under the effects of the starman.
if (instance_exists(obj_invincibility)) {

    //Make the player flash.
    isflashing++;
    if (isflashing > pal_swap_get_pal_count(palette_index)-1)
        isflashing = 0;
    
    //Repeat the process.
    if (obj_invincibility.alarm[0] > 120)
        alarm[5] = 4;
    else
        alarm[5] = 16;
}
else {

    isflashing = 0;
    alarm[5] = 1;
}

