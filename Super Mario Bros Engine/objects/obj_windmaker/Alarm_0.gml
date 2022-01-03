/// @description Create leaf effect

alarm[0] = 4;
if (ready == 1)
    instance_create(__view_get( e__VW.XView, view_current )-8,y+random_range(32,184),obj_leaf);

