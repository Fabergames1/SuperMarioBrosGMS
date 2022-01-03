/// @description Underwater Red Cheep-Cheep

//Default variable
sine = 0;

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 1;

//How many points should the enemy give when killed with an item
handicap = 1;
handicap_stomp = 0;

//Palette
palette_index = noone;

//Facing direction
xscale = 1;

//Sine movement
shift = 0;
yy = y;
t = 0;
amplitude = 16;
increment = degtorad(1);

//Animate
image_speed = 0.1;

//Start moving
alarm[10] = 2;

