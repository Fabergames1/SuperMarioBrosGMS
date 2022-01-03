/// @description Break it if big

if (global.powerup != cs_small) {

    //Play 'Break' sound
    audio_play_sound(snd_break, 0, false);
    
    //Increment score
    scr_score_add(50);
    
    //Make the player jump a bit
    with (obj_playerparent) {
    
        vspeed = -2;
        jumping = 2;
    }
    
    //Create shards
    event_user(1);
    
    //Check for a coin above
    var coin = collision_point(x,y-4,obj_coin,0,0);
    if (coin) {
    
        with (coin) {
        
            //Create block coin
            instance_create(x,ystart,obj_blockcoin);
    
            //Destroy
            instance_destroy();        
        }
    }
    
    //Create block bumper
    instance_create(x+8,ystart,obj_blockbumper);
    
    //Destroy
    instance_destroy();
}

