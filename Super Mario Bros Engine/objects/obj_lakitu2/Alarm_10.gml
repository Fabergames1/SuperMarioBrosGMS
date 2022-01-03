/// @description Begin movement if inside the view

if (x > __view_get( e__VW.XView, view_current ) - 16)
&& (x < __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )) {

    //Set the target
    target = instance_nearest(obj_levelcontrol.x, obj_levelcontrol.y, obj_playerparent);
    
    //Throw a spiny
    alarm[0] = 60;
    
    //Set the horizontal speed
    hspeed = -1.2;
}
else
    alarm[10] = 1;

