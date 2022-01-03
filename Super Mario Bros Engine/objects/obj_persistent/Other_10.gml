/// @description Set up the screen to be displayed

//Reset display
display_reset(display_aa,vsync);

//Set up the window
window_set_size(global.gw*(filter+1),global.gh*(filter+1));

//Set up the display
display_set_gui_size(global.gw*(filter+1),global.gh*(filter+1));

//Resize the application surface.
event_user(2)

//Center the window
alarm[0] = 1;

