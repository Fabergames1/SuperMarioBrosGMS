/// @description Warp from the right

player = collision_rectangle(x+18,y,x+18,y+31,obj_playerparent,0,0);
if (player)
&& (player.vspeed == 0)
&& (keyboard_check(vk_left)) {

    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);
    
    //Create pipe player
    with (instance_create(x+21,y+16,obj_player_warp)) {
        
        //Set direction
        direction = 180;
        
        //Speed
        speed = 0.5;
        
        //Facing direction
        image_xscale = -1;
        
        //Flashing
        isflashing = other.player.isflashing;
    }
    
    //Destroy player
    with (player) instance_destroy();
}

