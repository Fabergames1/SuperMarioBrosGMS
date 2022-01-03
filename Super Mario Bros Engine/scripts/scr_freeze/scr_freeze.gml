/// @description scr_freeze();
function scr_freeze() {

	/*
	//  Usage:
	//      scr_freeze();
	//
	//  Purpose:
	//      When called, freezes everything affected by gravity.
	*/

	//Stop animation
	image_index -= image_speed;

	//Stop movement
	//x = xprevious;
	//y = yprevious;
	gravity = 0;
	x -= hspeed;
	y -= vspeed//-gravity;

	//Stop all alarms
	for (i=0; i<12; i++) {
    
	    if (alarm[i])
	        alarm[i]++;
	}



}
