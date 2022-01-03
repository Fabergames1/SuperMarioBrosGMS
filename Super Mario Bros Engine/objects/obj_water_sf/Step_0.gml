/// @description Update width / height

//If the window looses focus
if (window_has_focus() == false) {

    dw = __view_get( e__VW.WView, view_current );
    dh = __view_get( e__VW.HView, view_current );  
    if (surface_exists(tearings_surface)) {
    
        surface_free(tearings_surface);
        tearings_surface = -1;
    }
} 

