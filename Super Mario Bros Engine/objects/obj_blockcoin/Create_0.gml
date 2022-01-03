/// @description A coin that came out from a block

//Play 'Coin' sound
audio_play_sound(snd_coin, 0, false);

//Animate
image_speed = 0.4;

//Set the vertical speed
vspeed = -4;

//Destroy
alarm[0] = 10;

//Add coins and score
scr_coins_add(1);
scr_score_add(200);

