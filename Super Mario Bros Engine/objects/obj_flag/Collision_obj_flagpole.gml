/// @description When the flag reaches the bottom of the flagpole

if (y > other.y+140) {

    //Stop moving
    vspeed = 0;

    //Snap to bottom of the flagpole
    y = other.y+140;
    
    //Play 'Flagpole' fanfare
    if (ready == 0) {
    
        //Play it once
        ready = 1;
        
        //Play 'Flagpole' song
        audio_play_sound(bgm_courseclear, 0, false);
    }
}

