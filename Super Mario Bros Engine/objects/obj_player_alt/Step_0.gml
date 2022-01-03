/// @description Handle animation

        //Animate
image_speed = 0.065+abs(hspeed)/7.5;

//Set walking pose
if (global.player == 0)
    sprite_index = scr_mario_walk();
else
    sprite_index = scr_luigi_walk();      

