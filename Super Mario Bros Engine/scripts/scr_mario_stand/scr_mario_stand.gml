/// @description scr_mario_stand();
function scr_mario_stand() {

	/*
	//  Usage:
	//      scr_mario_stand();
	//
	//  Purpose:
	//      Returns the appropiate standing sprite for Mario.
	*/

	switch (global.powerup) {

	    //Small
	    case (cs_small): return spr_mario_small_stand;
    
	    //Super
	    case (cs_super): return spr_mario_super_walk;
    
	    //Fire
	    case (cs_fire): return spr_mario_fire_walk;
	}



}
