/// @description Draw the 1up

//Set up the palette
pal_swap_set(pal_1up, global.skin, false);

//Draw sprite
draw_sprite(sprite_index, -1, x, y+1);

//Reset the palette
pal_swap_reset();

