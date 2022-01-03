/// @description Warp from the top

player = collision_rectangle(x+16,y-2,x+16,y+2,obj_playerparent,0,0);
if (player)
&& (keyboard_check(vk_down)) {

    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);
    
    //Create pipe player
    with (instance_create(x+16,y-16,obj_player_warp)) {
        
        //Set direction
        direction = 270;
        
        //Speed
        speed = 0.5;
        
        //Facing direction
        image_xscale = other.player.xscale;
        
        //Flashing
        isflashing = other.player.isflashing;
    }
    
    //Destroy player
    with (player) instance_destroy();
}

