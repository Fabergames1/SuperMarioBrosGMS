/// @description Return to the map after the music is done playing.

if (!audio_is_playing(bgm_courseclear)) {

    //Create in-castle flag
    if (instance_number(obj_flagc) == 0)    
        instance_create(obj_incastle.x-8,obj_incastle.y-64,obj_flagc);
}
else
    alarm[2] = 1;

