/// @description Hammer Bro.

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//How many points should the enemy give when killed with an item
handicap = 5;
handicap_stomp = 5;

//Palette
palette_index = pal_hammerbro;

//Whether can go through solid
throughsolid = 0;

//Whether the hammer bro can chase the player
chase = 0;

//Number of hammers to throw
hammers = 1+random(round(3));

//Animate
image_speed = 0.1;

//Reverse horizontal speed.
alarm[0] = 34;

//Jump upwards / downwards.
alarm[1] = 4;

//Set the throwing pose.
alarm[2] = 7;

//Move
alarm[10] = 2;

//Give chase
alarm[6] = 2640;

