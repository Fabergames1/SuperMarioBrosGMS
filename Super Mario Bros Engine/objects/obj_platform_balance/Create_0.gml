/// @description A balance platform, not suitable for plumbers over 80 kg.

/*
//  This item uses creation code.
//
//  limit = 'Y' position where both platforms will fall.
//  rx    = 'X' position of the right platform
//  ry    = 'Y' position of the right platform
*/

//Default variables
limit = ystart-48;
rx = x+96;
ry = y;

//Set the parent of the other platform.
parent = noone;
alarm[0] = 2;

//Does the rope exist?
rope = noone;
alarm[1] = 3;

//Make them fall
ready = 0;

//Maximum vertical speed
vspeedmax = 1;

/* */
/*  */
