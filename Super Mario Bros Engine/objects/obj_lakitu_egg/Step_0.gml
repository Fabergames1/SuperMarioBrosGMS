/// @description Lakitu egg logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Default wall event
event_user(3);

//Default floor event
event_user(4);

//Turn into a spiny
if (gravity == 0) {

    instance_create(x,y,obj_spiny);
    instance_destroy();
    exit;
}

