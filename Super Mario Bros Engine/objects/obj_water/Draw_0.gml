/// @description Draw water

//Set blend mode to 'Add'
draw_set_blend_mode(bm_add);

//Draw background
draw_sprite_ext(spr_underwater, anim, __view_get( e__VW.XView, view_current ), y+8, 1.5, 1, 0, c_white, 1);

//Set blend mode to 'Normal'
draw_set_blend_mode(bm_normal);

//Draw the top
for (i=0; i<room_width/32; i++)
    draw_sprite_ext(spr_underwater_top, -1, x+(32*i), y, 1, 1, 0, c_white, 1);

