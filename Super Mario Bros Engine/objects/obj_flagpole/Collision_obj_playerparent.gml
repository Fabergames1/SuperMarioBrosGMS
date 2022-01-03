/// @description Complete the level

//If the player y is lower than 16
if (other.y >= y+16) {

    //Create goal player
    with (instance_create(x+8,other.y,obj_player_goal)) {
    
        //Set up the id of this flagpole
        flagpole = other.id;
        
        //Make the flag move down
        with (other.flag) vspeed = 2;
    }
    
    //Get points
    event_user(0);
    
    //Destroy player object
    with (other) instance_destroy();
}

