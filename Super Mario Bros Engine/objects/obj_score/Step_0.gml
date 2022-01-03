/// @description Stay in view

//Stay in the view
x = __view_get( e__VW.XView, view_current );

//Prevent the effect from appearing outside the view
if (_xx < 0)
    _xx = 0;
else if (_xx > global.gw)
    _xx = global.gw;

//Prevent the effect from going too high on the screen
if (y < __view_get( e__VW.YView, view_current )+40)
    y = __view_get( e__VW.YView, view_current )+40;

