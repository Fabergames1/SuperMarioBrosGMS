/// @description Prevent the object from going too high on the flagpole

if (y < obj_flagpole.y+16) {

    y = obj_flagpole.y+16;
    if (vspeed < 0)
        vspeed = 0;
}

