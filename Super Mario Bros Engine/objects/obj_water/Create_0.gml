/// @description Underwater

//Animation
image_speed = 0.2;

//Background anim
anim = 0;

//Create surface
instance_create(x,y+8,obj_water_sf);

//Create swimming collision
water = instance_create(x,y+8,obj_swim);
with (water) {

    image_xscale = room_width/16;
    image_yscale = room_height/16;
}

