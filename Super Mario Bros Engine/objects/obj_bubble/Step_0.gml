/// @description Destroy in contact with solid or when outside water

//If there's a solid on the way
if (place_meeting(x,y-1,obj_solid))
    instance_destroy();

//Otherwise, if there's no water above
else if (!place_meeting(x,y-1,obj_swim))   
    instance_destroy();

