/// @description Destroy if outside the view

if (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.WView, view_current ))  
    instance_destroy();

