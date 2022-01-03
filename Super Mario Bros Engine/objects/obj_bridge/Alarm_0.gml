/// @description Destroy nearby bridge

//with the bridge
with (instance_place(x-16,y,obj_bridge)) {

    //Stop 'Bridge' sound
    audio_stop_sound(snd_bridge);

    //Play 'Bridge' sound
    audio_play_sound(snd_bridge, 0, false);

    //Make the next bridge collapse.
    alarm[0] = 4;    
}

//Animate
image_speed = 0.75;

