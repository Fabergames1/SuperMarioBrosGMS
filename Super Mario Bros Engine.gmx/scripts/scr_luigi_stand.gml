///scr_luigi_stand();

/*
//  Usage:
//      scr_luigi_stand();
//
//  Purpose:
//      Returns the appropiate standing sprite for Luigi.
*/

switch (global.powerup) {

    //Small
    case (cs_small): return spr_luigi_small_stand;
    
    //Super
    case (cs_super): return spr_luigi_super_walk;
    
    //Fire
    case (cs_fire): return spr_luigi_fire_walk;
}
