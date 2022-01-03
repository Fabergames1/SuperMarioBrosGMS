/// @description Make the player appear

//If the player didn't came from another room
if (global.postchange == -1) {

    with (scr_player_retrieve(x,y)) {
    
        if (!position_meeting(x,bbox_bottom+1,obj_solid)) {
        
            state = cs_jump;
            jumping = 2;
        }
    }
}

//Destroy
instance_destroy();

