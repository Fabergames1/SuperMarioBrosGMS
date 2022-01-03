/// @description Fireball logic

//Previous horizontal speed
prevhspeed = hspeed;

//Inherit event
event_inherited();

//If the direction changed, destroy
if (hspeed != prevhspeed) then event_user(0);
    
//Bounce
if (gravity == 0) {

    vspeed = -2.25;
    y--;
}

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-16)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+16)
    instance_destroy();

