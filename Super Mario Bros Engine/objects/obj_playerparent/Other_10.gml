/// @description Hurt the player

//If not invulnerable
if (invulnerable == 0) {

    //If the player is not small
    if (global.powerup > cs_small) {
    
        //Play 'Warp' sound
        audio_play_sound(snd_warp, 0, false);
        
        //Perform animation sequence
        with (instance_create(x,y,obj_player_transform)) {
        
            //If the player has the fire powerup, set 'Fire to Small' sequence.
            if (global.powerup == cs_fire)
                sequence = 3;
                
            //Otherwise, set 'Super to Small sequence.
            else
                sequence = 2;
        }
        
        //Set small powerup
        global.powerup = cs_small;
    }
    
    //Otherwise, kill the player
    else {
      
        instance_create(x,y,obj_player_dead);
        instance_destroy();
        exit;     
    }
    
    //Become invulnerable
    invulnerable = 1;
    
    //Become vulnerable
    alarm[0] = 192;
    alarm[1] = 1;
}

