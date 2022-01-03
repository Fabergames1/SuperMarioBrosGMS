/// @description Get a extra-life

//Play '1up' sound
audio_play_sound(snd_1up, 0, false);

//Get 1000 points
with (instance_create(x-8,y,obj_score)) event_user(10);

//Destroy
instance_destroy();

