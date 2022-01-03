/// @description Loop given theme

//If music is not disabled
if (musicdisable == false) {
        
    //If no music has been set
    if (levelmusic == noone)
    exit;
    
    //Otherwise, play it
    if (!audio_is_playing(global._music[levelmusic]))
        audio_loop_sound(global._music[levelmusic], global._st[levelmusic], global._en[levelmusic], 48000, 1);
}

