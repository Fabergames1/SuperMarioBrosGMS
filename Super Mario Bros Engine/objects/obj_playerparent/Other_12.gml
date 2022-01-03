/// @description Toggle movement when crouched down

//If the player is crouched down
if (crouch == true) {

    //If the player is jumping, allow movement
    if (state == cs_jump)
        move = true;
        
    //Otherwise, do not allow movement
    else
        move = false;
}

//Otherwise, allow movement
else 
    move = true;

