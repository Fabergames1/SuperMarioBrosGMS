/// @description Draw item

//If the sprite has a palette
if (palette_index != noone) {

    pal_swap_set(palette_index, global.skin, false);
}

//Draw it
draw_sprite_part_ext(sprite_index, -1, 0, 0, 16, ystart-y, x-8, y, 1, 1, c_white, 1);

//Reset shader
pal_swap_reset();

