/// @description Create bubble effect when swimming

alarm[6] = 45+random_range(15,-15);
if (swimming == true)
    instance_create(x,bbox_top,obj_bubble);

