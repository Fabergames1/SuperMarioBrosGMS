/// @description Make it jump.

//If inside view
if (x > __view_get( e__VW.XView, 0 )-32)
&& (x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32) {

    //Make it visible
    visible = true;
    
    //Set the vertical speed.
    vspeed = -6;
    
    //Play sound and create lava effect.
    alarm[2] = 10;
}

//Otherwise, wait
else
    alarm[1] = 10;

