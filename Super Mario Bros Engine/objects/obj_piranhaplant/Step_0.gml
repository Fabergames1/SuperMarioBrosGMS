/// @description Piranha Plant logic

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//Set depth
depth = 10;

