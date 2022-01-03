/// @description Hidden question mark block

/*
//  This object uses creation code
//
//      sprout = Pick from below
//          - cs_powerup
//          - cs_starman
//          - cs_1up
//          - cs_poison
*/

//Default variables
sprout = cs_coin;

//Destroy if this block has been hit on a previous run
if (ds_map_find_value(global.hidden,id) == 1)
    instance_destroy();

/* */
/*  */
