/// @description Warp the player to another destination

if (ready == 0)
&& (instance_exists(obj_playerparent)) {

    //If the player is above
    if (obj_playerparent.bbox_bottom > room_height+32) {
    
        //Enable pixel fade
        with (obj_persistent) tr_pixel = 1;
        
        //Start warp
        ready = 1;
    
        //If the position needs to be changed in the new room.
        if (postchange != -1) {
        
            //Remember the spawn type
            global.postchange = postchange;
            
            //Remember the x spawn position.
            global.postx = postx+16;
            
            //Remember the y spawn position.
            global.posty = posty+16;
        }
        
        //Go to the destination room
        room_goto(myroom);
    }
}

