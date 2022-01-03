/// @description You got points

//Do not animate
image_speed = 0;
image_index = 0;

//Set vertical speed
vspeed = -1;

//Destroy
alarm[0] = 48;

//Where the score is created on screen
_makex = xstart;

//Where the score goes, based on the distance from a give point
_xx = point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),_makex,__view_get( e__VW.YView, 0 ))

