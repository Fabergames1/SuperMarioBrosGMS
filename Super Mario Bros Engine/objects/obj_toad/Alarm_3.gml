/// @description Make Toad jump

//Play 'Jump' sound
audio_play_sound(snd_jump, 0, false);

//Set the vertical speed
vspeed = -3;

//Boost jump
y--;

//Jump again
alarm[3] = 120;

