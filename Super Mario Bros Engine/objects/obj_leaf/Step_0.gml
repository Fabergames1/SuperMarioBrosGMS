/// @description Destroy if outside the view

if (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ))
    instance_destroy();

