/// @description Podoboo logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Make it fall when reaching start position.
if ((y < ystart+39) && (ready == true)) {

    //Make it fall.
    ready = false;
    gravity = 0.2;
}

//Bounce if outside the room.
if (bbox_top > room_height) {

    if (!ready) {
    
        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
    }
}

//Bounce in contact with lava.
lava = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_lava,0,0);
if (lava) {

    //Bounce.
    if ((!ready) && (vspeed > 0)) {

        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
        
        //Create lava splash
        with (instance_create(x-8,lava.bbox_top-12,obj_smoke)) {
        
            sprite_index = spr_lavasplash;
            image_speed = 0.3;
        }
    }
}

//Set the scale.
xscale = 1;

//Prevent it from falling too fast.
if (vspeed > 6)
    vspeed = 6;

