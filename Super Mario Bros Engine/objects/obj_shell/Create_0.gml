/// @description Koopa Shell

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//How many points should the enemy give when killed with an item
handicap = 1;
handicap_stomp = 0;

//Palette
palette_index = pal_koopa;

//Facing direction
xscale = 1;

//Animate
image_speed = 0;
image_index = 1;

//Combo
hitcombo = 0;

//Whether the shell is not kicked
//0: Not kicked
//1: Kicked
//2: Kicked, can harm the player
ready = 0;

//Whether the shell is flipped
flip = 0;

//Animate legs if not kicked
frame = 0;
alarm[0] = 192;

//Pop out from the shell
alarm[1] = 312;

