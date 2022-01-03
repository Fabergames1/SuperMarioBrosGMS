/// @description Collision with the player

//If the player is on this moving platform
if (collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < cs_jump) {

    //Check for a moving platform or quicksand
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom,obj_solid,0,1);
    
    //If not colliding with a solid    
    if (!check) {
    
        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-16);
    
        //Snap the player horizontally and prevent it from getting embed on a solid.
        obj_playerparent.x += x-xprevious;
        if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            with (obj_playerparent) x--;
        else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            with (obj_playerparent) x++;
    }    
}

