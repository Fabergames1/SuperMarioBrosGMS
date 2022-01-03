/// @description It's a me, Mario!

//Inherit variables from parent
event_inherited();

//Palette
palette_index = pal_mario;

//Inherit physical variables
switch (global.physics)
{
    case 0: 
        scr_physics_mario_nes();
    break;
    case 1: 
        scr_physics_mario_nes();
    break;
    case 2: 
        scr_physics_mario_smas();
    break;
    case 3: 
        scr_physics_mario_modern();
    break;
}

