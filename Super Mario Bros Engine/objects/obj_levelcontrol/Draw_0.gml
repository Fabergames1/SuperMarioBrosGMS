/// @description Draw parallax backgrounds

//Update parallax background position
for (var i=0; i<8; i++)
    xx[i] = __view_get( e__VW.XView, view_current ) / (1.125 + (0.75 * i));

//If the level is a castle maze
if (instance_number(obj_castle) == 0) {
    
    for (var i=0; i<8; i++) {
    
        //If the background exists
        if (__background_get( e__BG.Index, i ) != -1)
            draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, i ), xx[i]+(__background_get( e__BG.X, i )+__background_get( e__BG.HSpeed, i )), __view_get( e__VW.YView, 0 ), 1, 1, 0, __background_get( e__BG.Blend, i ), __background_get( e__BG.Alpha, i ));
    }
}

//Draw top
if (drawblack)
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), 32, c_black, c_black, c_black, c_black, 0);

//Draw pit
if (!instance_exists(obj_water_sf))
    draw_background_ext(bgr_pit, 0, room_height-16, room_width/16, 1, 0, c_white, 0.5);

