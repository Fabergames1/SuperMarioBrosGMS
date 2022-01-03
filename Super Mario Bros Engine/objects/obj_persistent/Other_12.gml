/// @description HOHOO

if (window_get_fullscreen()) {
    
    var _size = ceil(display_get_height()/__view_get( e__VW.HView, view_current ));
    __view_set( e__VW.WPort, view_current, global.gw*_size )
    __view_set( e__VW.HPort, view_current, global.gh*_size )
}
else {
    __view_set( e__VW.WPort, view_current, global.gw*(filter+1) )
    __view_set( e__VW.HPort, view_current, global.gh*(filter+1) )
}

surface_resize(application_surface, __view_get( e__VW.WPort, view_current ), __view_get( e__VW.HPort, view_current ))

if (instance_exists(obj_water_sf))
    with (obj_water_sf) event_user(0);
        

