/// @description Cheep-Cheep logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Always look at the left
xscale = -1;

//Reverse vertical speed
if (sine == 1) {

    t += increment;
    shift = amplitude * sin(t);
    y = yy + lengthdir_y(shift, 90);
}

//Destroy if outside the view to the left
if (x < __view_get( e__VW.XView, 0 )-16)
    instance_destroy();

