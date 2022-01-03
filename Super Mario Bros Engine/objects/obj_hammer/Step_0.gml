/// @description Hammer logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Animate
image_speed = 0.3;

//Set the falling speed.
if (vspeed > 4) {

    vspeed = 4;
    gravity = 0;
}

//Destroy outside room.
if (bbox_top > room_height)
    instance_destroy();

