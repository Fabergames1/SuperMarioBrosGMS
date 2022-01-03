/// @description Enter the pipe

//Play 'Warp' sound
audio_play_sound(snd_warp, 0, false);

//Create pipe player
with (instance_create(other.x-5,other.y+16,obj_player_warp)) {
    
    //Set direction
    direction = 0;
    
    //Speed
    speed = 0.5;
    
    //Facing direction
    image_xscale = 1;
}

//Destroy player
instance_destroy();

