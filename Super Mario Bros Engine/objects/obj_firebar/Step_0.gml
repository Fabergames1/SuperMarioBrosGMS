/// @description Firebar logic

//Animate
anim += 0.3;

//Reset angle if outside the view
if (x < __view_get( e__VW.XView, 0 )-(48+(length*8)))
|| (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + (48+(length*8)))
    angle = angle_default;

