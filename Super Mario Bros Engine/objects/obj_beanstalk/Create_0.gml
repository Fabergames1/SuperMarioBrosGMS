/// @description A climbable beanstalk

//Default variable
limit = -64;

//Play 'Beanstalk' sound
audio_play_sound(snd_beanstalk, 0, false);

//Do not animate
image_speed = 0;
image_index = 0;

//Set the vertical speed
vspeed = -0.5;

//Create vines
alarm[0] = 32;

