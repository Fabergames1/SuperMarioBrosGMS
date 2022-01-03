/// @description Make the player bounce

//Set the vertical speed
vspeed = -4;

//Boost jump
y--;

//Switch to jump state
state = cs_jump;

//Prevent variable jumping
if (global.physics)
&& (keyboard_check(vk_shift))
    jumping = 1;
else
    jumping = 2;

