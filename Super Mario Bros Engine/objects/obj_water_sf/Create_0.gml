/// @description Underwater ripple effect

dw = __view_get( e__VW.WView, view_current );                   //Width
dh = __view_get( e__VW.HView, view_current );                   //Height

tearings_surface    = surface_create(dw, dh);    //We'll draw on this surface
tearings_y          = 0;
band_num            = 256;                       //How many bands you want on screen
band_height         = dh / band_num;
tearings_x_offset   = 2;                         //How much you want to displace the bands horizontally
tearing_speed       = 4;                         //Change this to speed up/slow down the tearings

