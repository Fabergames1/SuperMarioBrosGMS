/// @description Collect the coin

//Play 'Coin' sound
audio_play_sound(snd_coin, 0, false);

//Add coins
scr_coins_add(1);

//Add score
scr_score_add(200);

//Destroy
instance_destroy();

