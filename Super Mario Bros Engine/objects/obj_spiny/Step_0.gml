/// @description Spiny logic

//Inherit default event
event_inherited();

//Slowdown if bumped
if (gravity == 0) {

    if (abs(hspeed) > 0.5)
    && (global.hardmode == false)
        hspeed = hspeed/2;
}

//Face towards direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

