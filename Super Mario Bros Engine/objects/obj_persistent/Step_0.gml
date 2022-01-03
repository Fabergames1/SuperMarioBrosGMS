/// @description Set up room parameters

//Enable views if not enabled
view_enabled = true;

//Update visibility
__view_set( e__VW.Visible, 0, true );

//Update wport
__view_set( e__VW.WPort, 0, global.gw );

//Update hport
__view_set( e__VW.HPort, 0, global.gh );

//Update wview
__view_set( e__VW.WView, 0, global.gw );

//Update hview
__view_set( e__VW.HView, 0, global.gh ); 

//Update hborder
__view_set( e__VW.HBorder, 0, global.gw/2 );

//Update vborder
__view_set( e__VW.VBorder, 0, global.gh/2 );

///Keep following objects activated

instance_activate_object(obj_audio_loop_sound);

