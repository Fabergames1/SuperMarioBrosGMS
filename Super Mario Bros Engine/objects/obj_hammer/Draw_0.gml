//Draw hammer

//Set up the palette
pal_swap_set(pal_hammerbro, global.skin, false);

//Draw sprite
draw_sprite_ext(sprite_index, -1, x, y+1, image_xscale, 1, 0, c_white, 1);

//Reset the palette
pal_swap_reset();

