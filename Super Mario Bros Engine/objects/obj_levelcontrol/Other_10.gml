/// @description Prevent the player from going outside the view

//If the player is the main one
if (instance_exists(obj_playerparent)) {

    //If the player is at the leftmost boundary
    if (obj_playerparent.x < __view_get( e__VW.XView, 0 ) + 8) {
    
        //Snap the player 5 pixels at the left of the boundary
        obj_playerparent.x = __view_get( e__VW.XView, 0 ) + 8;
        
        //Stop the player's horizontal movement
        if (obj_playerparent.hspeed < 0)
            obj_playerparent.hspeed = 0;
    }
    
    //Otherwise, if the player is at the rightmost boundary
    else if (obj_playerparent.x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 8) {
    
        //Snap the player 5 pixels at the left of the boundary
        obj_playerparent.x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 8;
        
        //Stop the player's horizontal movement
        if (obj_playerparent.hspeed > 0)
            obj_playerparent.hspeed = 0;
    }
}

