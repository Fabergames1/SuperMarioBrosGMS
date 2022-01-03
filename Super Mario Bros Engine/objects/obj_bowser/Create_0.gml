/// @description The "all-mighty" King Koopa

/*
//  This object uses creation code
//
//      hammer = To make bowser throw hammers
//      fake   = Sets up a different set of colours (1...7)
*/

//Default variables
hammer = global.hardmode;
fake = 0;

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 1;

//How many points should the enemy give when killed with an item
handicap = 8;
handicap_stomp = 0;

//Palette
palette_index = noone;

//Facing direction
xscale = 1;

//Hits
hits = 5;

//Hammers left
rounds = 8;

//Whether bowser is in lava
inlava = 0;

//Whether bowser is jumping
jumping = 0;

//Display 'Hurt' sprite for a moment
cooldown = 0;

//Previous horizontal speed
prevhspeed = 0;

//Animate
image_speed = 0.1;

//Start moving
alarm[10] = 2;

/* */
/*  */
