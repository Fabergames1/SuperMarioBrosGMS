/// @description Physics parent logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

