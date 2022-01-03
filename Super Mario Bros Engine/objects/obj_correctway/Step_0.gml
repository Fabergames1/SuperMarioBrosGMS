/// @description Castle maze logic

//If the player does not exist, exit the event
if (!instance_exists(obj_playerparent))
    exit;
    
//Otherwise, if the way has been picked correctly
else if (check == 1) {

    //If the player x is greater than this object x
    if (instance_number(obj_playerparent) > 0) {
    
        if (obj_playerparent.x < x+8) {
        
            check = 0;
            parent.numb--;
        }
    }
}

