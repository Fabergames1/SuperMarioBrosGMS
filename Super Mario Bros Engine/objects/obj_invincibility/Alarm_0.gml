/// @description End invincibility

//Stop 'Invincible' music
audio_stop_sound(bgm_invincible);

//Play level music
obj_levelcontrol.alarm[0] = 2;

//Destroy
alarm[1] = 60;

