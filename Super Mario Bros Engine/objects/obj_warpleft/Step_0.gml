/// @description Warp from the left

player = collision_rectangle(x-2,y,x-2,y+31,obj_playerparent,0,0);
if (player)
&& (player.vspeed == 0)
&& (keyboard_check(vk_right)) {

    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);
    
    //Create pipe player
    with (instance_create(x-8,y+16,obj_player_warp)) {
        
        //Set direction
        direction = 0;
        
        //Speed
        speed = 0.5;
        
        //Facing direction
        image_xscale = 1;
        
        //Flashing
        isflashing = other.player.isflashing;
    }
    
    //Destroy player
    with (player) instance_destroy();
}

