/// @description Take points off the time, and add to the score

//If there is no time left
if (global.time == 0) {

    //If the 'World Clear' theme is not playing
    if (!audio_is_playing(bgm_worldclear))
    && (!ready) {     
        
        //Prevent a cycle
        ready = true;
                
        //Go to the next area
        alarm[2] = 120;  
    }
    
    //Otherwise, take points out of time
    else    
        alarm[1] = 1;
}

//Otherwise
else {

    //Decrement a second from the timer
    if (global.time > 0) {
    
        //Decrement
        global.time--;
        
        //Get 50 points/second
        score += 50;
        
        //Repeat the process
        alarm[1] = 1;
        
        //Begin timer loop
        if (global.time > 1) {
        
            if (!audio_is_playing(snd_count))
                audio_play_sound(snd_count, 0, true);
        }
        else if (global.time == 1) {
        
            audio_stop_sound(snd_count);
            audio_play_sound(snd_countend, 0, false);
        }
    }
}

