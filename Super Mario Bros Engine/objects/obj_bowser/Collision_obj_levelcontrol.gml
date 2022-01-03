/// @description Change the music

//If the player is not on the last stage
if (global.world != "8-4") 
&& (global.world != "D-4") {

    //With the level controller
    with (other) {
    
        //If the boss music is not playing
        if (levelmusic != 998) {
        
            //Stop current theme
            audio_stop_sound(global._music[levelmusic]);
        
            //Set 'Bowser' music
            levelmusic = 998;
            
            //Play it
            alarm[0] = 2;
        }
    }
}

//Otherwise, play 'Bowser - Final'
else {

    //With the level controller
    with (other) {
    
        //If the boss music is not playing
        if (levelmusic != 999) {
        
            //Stop current theme
            audio_stop_sound(global._music[levelmusic]);
        
            //Set 'Bowser' music
            levelmusic = 999;
            
            //Play it
            alarm[0] = 2;
        }
    }    
}

