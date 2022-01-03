/// @description Level Control object

//Default values (Check init_globals_mus for the number of the tracks)
levelmusic = noone;
leveltime = 0;
drawblack = 0;

//Begin playing the music
alarm[0] = 2;

//The music can play?
musicdisable = 0;

//Disable barrier
barrier = 1;
alarm[5] = 3;

//Create HUD
instance_create(0,0,obj_hud);

//Jump to position
x = __view_get( e__VW.XView, view_current )+128;
target = noone;

