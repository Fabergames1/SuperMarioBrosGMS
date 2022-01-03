/// @description Play invincibility music

//End level music and reset global.music
with (obj_levelcontrol) alarm[1] = 1;

//Play 'Invincible' theme
if (!audio_is_playing(bgm_invincible))
    audio_play_sound(bgm_invincible, 0, true);

