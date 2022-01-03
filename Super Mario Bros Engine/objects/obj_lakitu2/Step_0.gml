/// @description Lakitu logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//If Lakitu goes outside the view, destroy
if (x < __view_get( e__VW.XView, view_current ) - 16)
    instance_destroy();
    
//If the player does exist
if (instance_number(obj_playerparent) > 0) 
&& (goaway == 0) {

    //If the camera exists
    if (instance_number(obj_levelcontrol) > 0) {
       
        target = instance_nearest(obj_levelcontrol.x, obj_levelcontrol.y, obj_playerparent);
    }
    
    //Turn towards the player
    if (target.x > x)
        xscale = 1;
    else
        xscale = -1;
    
    //Turn around
    if (x < __view_get( e__VW.XView, view_current ) + 40)
        hspeed = 1.2;    
    else if (x > __view_get( e__VW.XView, view_current ) + 216)
        hspeed = -1.2;
        
    //Round x position
    x = round(x);
    
    //Update x position
    if (target.hspeed > 0)
    && (target.x > obj_levelcontrol.x-32)
        x += target.hspeed;
}

