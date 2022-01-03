/// @description An heroic death!

//Play 'Player Down' sound
audio_play_sound(bgm_playerdown, 0, false);

//Stop 'Invincible' bgm
audio_stop_sound(bgm_invincible);

//Stop music and time
with (obj_levelcontrol) {

    musicdisable = true;
    alarm[1] = 1;
    alarm[2] = 0;
}

//Subtract a life
lives--;

//Jump
alarm[0] = 60;

//Go back
alarm[1] = 200;

//Restart level
global.playerstart = 0;

//Reset powerup
global.powerup = cs_small;

//Change to luigi if required
if (global.player == 1)
    sprite_index = spr_luigi_dead;

