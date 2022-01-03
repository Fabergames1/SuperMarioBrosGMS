/// @description Destroy in contact with solid or when outside water

//Increment alpha
image_alpha += 0.0125;

//Increment vertical speed
if (vspeed < 3) {

    vspeed += 0.25;
}

//If there's a solid on the way
if (place_meeting(x,bbox_bottom,obj_solid))
    instance_destroy();

//Otherwise, if the bubble is below the water
else if (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.WView, view_current ))  
    instance_destroy();

