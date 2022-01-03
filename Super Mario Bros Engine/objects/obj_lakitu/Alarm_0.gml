/// @description Create a lakitu

//Check if the player exists
if (instance_number(obj_playerparent) > 0)
    target = instance_nearest(x, y, obj_playerparent);

//Check again if the player exists
if (instance_number(obj_playerparent) > 0) 
&& (target.x > x)
&& (instance_number(obj_lakitu2) == 0) {

    if (target.x > obj_lakitu_end.x)
        instance_destroy();
    else {
    
        with (instance_create(__view_get( e__VW.XView, view_current ) + 384, __view_get( e__VW.YView, view_current ) + 48, obj_lakitu2)) 
            eggmode = other.eggmode;
    }
}

//Check once again if the player exists
if (instance_number(obj_playerparent) > 0)
&& (!target.x > x)
    alarm[1] = 2;

