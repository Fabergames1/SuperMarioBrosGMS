/// @description Warp to the given destination room

//Set pixel fade mode
with (obj_persistent) tr_pixel = 1;

//With the warp object.
with (other) {

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

