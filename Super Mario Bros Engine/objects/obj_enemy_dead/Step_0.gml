/// @description Dead enemy logic

//Cap vertical speed
if (vspeed > 4) {

    //Cap vertical speed
    vspeed = 4;
    if (y > __view_get( e__VW.YView, 0 )+248)
        instance_destroy();
}

//Cap horizontal speed
if (hspeed > 0.8)
    hspeed = 0.8;
else if (hspeed < -0.8)
    hspeed = -0.8;

