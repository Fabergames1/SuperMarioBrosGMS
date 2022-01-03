/// @description Draw underwater surface

//Create surface if it doesn't exits
if (!surface_exists(tearings_surface)) {

    tearings_surface = surface_create(__view_get( e__VW.WView, view_current ), __view_get( e__VW.HView, view_current ));
}

//Let's set the target to our surface
surface_set_target(tearings_surface);
draw_clear_alpha(c_black, 0);

//We draw parts of our application surface on tearings surface
for (var current_band = 0; current_band < band_num * 2; current_band++) {

    draw_surface_part(application_surface, 0, band_height * current_band - tearings_y, dw, band_height, sin((degtorad(360) / band_num) * current_band) * tearings_x_offset , band_height * current_band - tearings_y)
}

//Always reset the target surface
surface_reset_target();

//Draw the actual surface
draw_surface_stretched(tearings_surface, round(__view_get( e__VW.XView, view_current )) - tearings_x_offset, 0, dw + tearings_x_offset * 2, dh);

//Move the Tearings
tearings_y = (tearings_y + tearing_speed) % (band_height * band_num);

