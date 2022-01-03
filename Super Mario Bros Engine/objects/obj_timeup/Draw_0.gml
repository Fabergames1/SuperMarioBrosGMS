/// @description Draw logo, time up and character stuff

//Inherit default event
event_inherited();

//Draw character name...
draw_sprite(spr_hud_tu_player, global.player, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)-24, __view_get( e__VW.YView, view_current )+87);

//...and right below "Time Up"
draw_sprite(spr_hud_tu_timeup, global.player, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)-32, __view_get( e__VW.YView, view_current )+103);

//Draw the player
draw_sprite(spr_hud_tu_player2, global.player, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)-23, __view_get( e__VW.YView, view_current )+147);

//Draw game title
draw_sprite(spr_hud_tu_title, 0, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)+25, __view_get( e__VW.YView, view_current )+184);

