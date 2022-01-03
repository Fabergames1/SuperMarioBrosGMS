/// @description A platform generator

/*
//  This object uses creation code
//
//      sprite = Sprite of the platform to generate
//      time   = In what interval of time should this object generate a platform...
//      spd    = ...and with how much speed.
*/

//Default variables
sprite = spr_platform;
time = 1;
spd = 1;

//Generate
alarm[0] = round(60*time);

/* */
/*  */
