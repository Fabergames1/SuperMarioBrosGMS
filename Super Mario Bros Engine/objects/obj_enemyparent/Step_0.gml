/// @description Enemy logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Turn at enemies script
event_user(2);

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

