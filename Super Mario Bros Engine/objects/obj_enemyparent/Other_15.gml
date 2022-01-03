/// @description Turn at ledges script

//If the object's vertical speed is larger than 0.
if (gravity == 0) {

    //If moving left
    if (hspeed < 0) && (!collision_rectangle(bbox_left-1+hspeed,bbox_bottom-1,bbox_left,bbox_bottom+15,obj_solid,0,0))
    || (hspeed > 0) && (!collision_rectangle(bbox_right,bbox_bottom-1,bbox_right+1+hspeed,bbox_bottom+15,obj_solid,0,0))
        hspeed = -hspeed;
}

