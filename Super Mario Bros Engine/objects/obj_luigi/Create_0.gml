/// @description It's a me, Luigi!

//Inherit variables from parent
event_inherited();

//Palette
palette_index = pal_luigi;

//Inherit physical variables
switch (global.physics)
{
    case 0: 
        scr_physics_mario_nes();
    break;
    case 1: 
        scr_physics_luigi_ll();
    break;
    case 2: 
        scr_physics_luigi_smas();
    break;
    case 3: 
        scr_physics_luigi_modern();
    break;
}

