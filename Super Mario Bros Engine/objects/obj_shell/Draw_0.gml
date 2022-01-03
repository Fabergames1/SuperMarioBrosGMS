//Draw shell

//Set up the palette
pal_swap_set(pal_koopa, global.skin, false);

//Draw sprite
if (flip == 0)
    draw_sprite_ext(sprite_index, image_index-frame, x, y+1, image_xscale, 1, 0, c_white, 1);
else
    draw_sprite_ext(sprite_index, image_index-frame, x, y+19, image_xscale, -1, 0, c_white, 1);

//Reset the palette
pal_swap_reset();

