/// @description Draw current world and playable character

//Inherit default event
event_inherited();

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Draw current world
if (global.hardmode == true)
    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+63, string_hash_to_newline(string_upper("world *") + string(global.world)));
else
    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+63, string_hash_to_newline(string_upper("world  ") + string(global.world)));
    
//Re-align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//Draw face frame
draw_sprite(spr_hud_ls_face, global.player, __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-31, __view_get( e__VW.YView, 0 )+80);

//Draw current lives
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+88, string_hash_to_newline("\"" + string_format(lives, 3, 0)));

//Draw level preview
draw_sprite(spr_hud_ls_preview, 0, __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-65, __view_get( e__VW.YView, 0 )+112);
draw_sprite(spr_hud_ls_preview, frame, __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-65, __view_get( e__VW.YView, 0 )+112);

