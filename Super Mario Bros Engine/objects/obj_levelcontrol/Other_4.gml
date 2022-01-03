/// @description Initialize level parameters

//Set up the time for the level.
if (leveltime > 0) { //If the timer has been set.

    //If the global time for the level is equal to 0.
    if (global.time = 0) {
    
        global.time = leveltime;
        alarm[2] = 60;
    }
    
    //Otherwise, if the time has been set before.
    else if (global.time > 0)    
        alarm[2] = 60;
}

//If the player came from another room
if (global.postchange != -1) {
    
    //Move the camera to the warp spot
    x = global.postx+64;
    
    //Destroy player objects
    event_user(1);
    
    //Clear NPCs
    with (obj_clearnpcs) {
    
        mode = 1;
        event_user(0);
    }
        
    //Main
    if (global.postchange == 0) {
    
        with (scr_player_retrieve(global.postx, global.posty)) {
        
            if (!place_meeting(global.postx, global.posty+16, obj_solid))
                state = cs_jump;
        }
    }
    
    //Warp
    else if (global.postchange == 1) {
    
        with (instance_create(global.postx, global.posty, obj_player_warp)) {
        
            //Stop it
            speed = 0;
            delay = 1;
            
            //Start moving
            alarm[2] = 54;
        }
    }
    
    //Climb
    else if (global.postchange == 2) {
    
        instance_create(global.postx, global.posty, obj_player_climb);
    }
                        
    //Reset post change
    global.postchange = -1;
}

//Otherwise, move to the next
else {

    //Move to the latest checkpoint if it exists.
    if (instance_exists(global.checkpoint)) {
    
        //Move the camera to the checkpoint position
        x = global.checkpoint.x+80;
        
        //Clear NPCs
        with (obj_clearnpcs) {
        
            mode = 0;
            event_user(0);
        }
        
        //Destroy all player objects        
        event_user(1);
        
        //Create a player object right in position
        scr_player_retrieve(global.checkpoint.x, global.checkpoint.y);
    }
}

//Parallax backgrounds
for (var i=0; i<8; i++)
    xx[i] = __view_get( e__VW.XView, 0 )/(1.2+(0.4*i));

