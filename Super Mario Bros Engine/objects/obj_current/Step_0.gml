/// @description Push the player to the middle if it is swimming

//If the player does exist
if (instance_exists(obj_playerparent)) {

    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,0)) {
    
        //If the player is at the leftmost area of the current, push him to the middle
        if (obj_playerparent.x < x) {
        
            if (obj_playerparent.hspeed < -1)
                obj_playerparent.hspeed += 0.125;
            else
                obj_playerparent.x += 0.25;   
        }
        
        //Otherwise, do the same but in the opposite direction
        else {
                
            if (obj_playerparent.hspeed > 1)
                obj_playerparent.hspeed -= 0.125;
            else
                obj_playerparent.x -= 0.25;              
        }
    
        //If the player is moving down
        if (obj_playerparent.state == cs_jump)
        && (obj_playerparent.vspeed < 2.5)
            obj_playerparent.vspeed += 0.25;
    }
}

