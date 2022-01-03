/// @description Draw the player

//Set the shader
if (global.player == 0)
    pal_swap_set(pal_mario, isflashing, false);
else
    pal_swap_set(pal_luigi, isflashing, false);

//Draw sprite
draw_sprite_ext(sprite_index, -1, x, y+1, xscale, 1, 0, c_white, image_alpha);

//Reset shader
pal_swap_reset();

