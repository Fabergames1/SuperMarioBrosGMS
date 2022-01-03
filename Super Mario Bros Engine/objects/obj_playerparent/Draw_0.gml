/// @description Draw the player

//Set the shader
pal_swap_set(palette_index, isflashing, false);

//Draw sprite
draw_sprite_ext(sprite_index, -1, x, y, xscale, 1, 0, c_white, image_alpha);

//Reset shader
pal_swap_reset();

