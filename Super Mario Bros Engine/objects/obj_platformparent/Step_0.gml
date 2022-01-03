/// @description Mario logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Make sure the player exists
if (instance_exists(obj_playerparent)) {

    with (obj_playerparent) {
    
        //If the player is moving to the right and there's a wall on the way.
        if (hspeed > 0) 
        && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-4,other.id,0,0)) {
        
            //Stop horizontal speed
            hspeed = 0;
            
            //Prevent the player from getting embed on the wall
            while (collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-4,other.id,0,0))
            && (!collision_point(x,bbox_top+4,other.id,0,0))
                x--;
        }
        
        //Otherwise, if the player is moving to the left and there's a wall on the way.
        else if (hspeed < 0)
        && (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-4,other.id,0,0)) {
        
            //Stop horizontal speed
            hspeed = 0;
            
            //Prevent the player from getting embed on the wall
            while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-4,other.id,0,0))
            && (!collision_point(x,bbox_top+4,other.id,0,0))
                x++;
        }
        
        //If the player is moving up
        if (vspeed < 0) 
        && (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,other.id,1,0)) {
        
            //Prevent the player from getting embed on a ceiling
            if (state > cs_walk) {
            
                while (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,other.id,0,0))
                    y++;
            }
            
            //Stop vertical movement
            vspeed = 0;
            
            //Play 'Bump' sound if not climbing
            if (state == cs_jump)
                audio_play_sound(snd_bump, 0, false);
        }
    }
    
    //Make sure if the player is below the block
    if (obj_playerparent.y > y-11) {
    
        if ((hspeed < 0) && (collision_rectangle(bbox_left-2-hspeed,bbox_top+4,bbox_left-2,bbox_bottom-1,obj_playerparent,0,0)))
        || ((hspeed > 0) && (collision_rectangle(bbox_right+2,bbox_top+4,bbox_right+2+hspeed,bbox_bottom-1,obj_playerparent,0,0)))
            obj_playerparent.x += hspeed;
    }
}

