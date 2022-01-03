/// @description Take points off the time, and add to the score

//If there is no time left
if (global.time == 0) 
    alarm[2] = 1;

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

