/// @description Draw the HUD

d3d_transform_set_translation((global.gw-global.res[0])/2,0,0)

//Set the font
draw_set_font(global.hud_font);

//Set the colour
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(1);

//HUD
if (global.player == 0) then draw_sprite_ext(spr_hud, anim, __view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+16, 1, 1, 0, c_white, 1);
else if (global.player == 1) then draw_sprite_ext(spr_hud_l, anim, __view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+16, 1, 1, 0, c_white, 1);
//Score

draw_text(__view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string_add_zeros(score, 6)));

//Coins
draw_text(__view_get( e__VW.XView, 0 )+104, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string_add_zeros(global.coins, 2)));

//World / Level (Draw a star before if hard mode is selected)
draw_text(__view_get( e__VW.XView, 0 )+152, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string(global.world)));
if (global.hardmode == 1) {

    draw_text(__view_get( e__VW.XView, 0 )+144, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string("*")));
}   

//Time
if (instance_exists(obj_levelcontrol)) {
    
    if (obj_levelcontrol.leveltime > 0) {
    
        if (global.time > 0)
            draw_text(__view_get( e__VW.XView, 0 )+208, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string_add_zeros(global.time, 3)));
        else
            draw_text(__view_get( e__VW.XView, 0 )+208, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string("000")));
            
    }
    else
        draw_text(__view_get( e__VW.XView, 0 )+208, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string("000")));
}
else
    draw_text(__view_get( e__VW.XView, 0 )+208, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string("000")));
    
d3d_transform_set_identity()

