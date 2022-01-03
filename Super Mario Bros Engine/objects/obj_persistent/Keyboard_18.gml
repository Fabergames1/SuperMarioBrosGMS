/// @description Handle all of the hot keys

//Quit the game when ALT+F4 are pressed.
if (keyboard_check_pressed(vk_f4))
    game_end();
    
//Restart the game when ALT+R are pressed.
else if (keyboard_check_pressed(ord("R"))) {

    //Stop all audio
    audio_stop_all();
        
    //Reset all global variables
    init_globals();    
    
    //If the screen is not fading out
    room_goto(room_first);
}

//Change window size
else if (keyboard_check_pressed(ord("W"))) {

    //If the window is not set to fullscreen
    if (fullscreen == false) {

        //Change filter
        filter++;
        
        //Check if the filter is the second one
        if (filter == 3) {
        
            //Set default filter
            filter = 0;
            
            //Set fullscreen variable
            fullscreen = true;
            
            //Set fullscreen mode
            window_set_fullscreen(true);                                                             
        }
    }
    
    //Otherwise, set it to windowed mode
    else {
    
        //Change fullscreen variable
        fullscreen = false;
    
        //Set windowed mode
        window_set_fullscreen(false);             
    }
    
    //Apply settings
    alarm[4]= 1
}

else if (keyboard_check_pressed(vk_enter)) {

    //If the window is not set to fullscreen
    if (fullscreen == false) {
            //Set default filter
            filter = 0;
            
            //Set fullscreen variable
            fullscreen = true;
            
            //Set fullscreen mode
            window_set_fullscreen(true);
    }
    
    //Otherwise, set it to windowed mode
    else {
    
        //Change fullscreen variable
        fullscreen = false;
        
        filter = 1
    
        //Set windowed mode
        window_set_fullscreen(false);             
    }
    
    //Apply settings
    alarm[4] = 1
}

else if (keyboard_check_pressed(ord("A"))) {

    global.gw = global.res[0];
    
    //Apply settings
    alarm[4]= 1
}

