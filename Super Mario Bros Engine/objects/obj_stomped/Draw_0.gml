/// @description Draw the pancake

//Set up the palette
pal_swap_set(pal_goomba, global.skin, false);

//Draw sprite
draw_sprite(sprite_index, -1, x, y);

//Reset the palette
pal_swap_reset();

