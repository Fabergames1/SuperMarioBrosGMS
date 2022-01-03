/// @description Default floor / ceiling collision

//When moving down
if (vspeed >= 0) {

    //Check for a semisolid below
    var semisolid = collision_rectangle(x,bbox_bottom,x,bbox_bottom+vspeed,obj_solid,0,0);
    
    //If the semisolid exists, snap above it.
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
        y = semisolid.bbox_top-(sprite_height-sprite_get_yoffset(sprite_index));
}

//Check for floor objects
if ((collision_rectangle(x,bbox_bottom+1,x,bbox_bottom+1,obj_solid,0,0))
&& (!collision_rectangle(x,bbox_bottom-4,x,bbox_bottom-4,obj_solid,0,0))) {

    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}
else {

    //Gravity
    gravity = 0.2;
    
    //Cap vertical speed
    if (vspeed > 4)
        vspeed = 4;
}

//If the player is moving up
if (vspeed < 0)
&& (collision_rectangle(x,bbox_top-1,x,bbox_top-1,obj_solid,1,0)) {
    
    //Prevent the NPC from getting stuck on a ceiling.
    while (collision_rectangle(x,bbox_top,x,bbox_top,obj_solid,1,0))
        y++;
    
    //Stop vertical speed
    vspeed = 0;
}

