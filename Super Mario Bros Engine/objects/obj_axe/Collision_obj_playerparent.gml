/// @description Make the bridge collapse if Bowser exists

if (ready == 0) {

    //Turn the player into the course clear object
    with (other) instance_change(obj_player_axe, true);
    
    //With level control
    with (obj_levelcontrol) {
    
        musicdisable = true;
        alarm[1] = 1;
        alarm[2] = 0;
    }
    
    //Ready?
    ready = 1;
    
    //Make the bridge collapse if bowser exists
    if (instance_exists(obj_bowser)) {
        
        visible = false;
        with (instance_place(x-16,y+32,obj_bridge))        
            alarm[0] = 30;
    }
    
    //Otherwise, just go to toad
    else {
    
        with (obj_player_axe) {
                            
            //Play 'World Clear' theme.
            audio_play_sound(bgm_worldclear, 0, 0);
        
            //Set the horizontal speed.
            hspeed = 1.5;
            
            //Go see toad
            ready = 2;
            
            //Set the facing direction.
            xscale = 1;
            
            //Set the speed of the view
            room_width = prevwidth+256;   
        }
    }
}

