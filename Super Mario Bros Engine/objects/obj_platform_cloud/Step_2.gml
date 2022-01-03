/// @description Cloud Platform

//Inherit default event
event_inherited();

//Start moving if the player steps in
var player = collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0);
if (player) 
&& (player.state != cs_jump) {

    //If the cloud is not moving
    if (hspeed == 0)
        hspeed = 1;
}

//Destroy if outside the room
if (x > room_width+8)
    instance_destroy();

