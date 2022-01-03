/// @description Warp the player to another destination

//Reset checkpoints
global.checkpoint = noone;
global.checkpointroom = noone;

//Set the world
global.world = myworld;

//Go to level start screen
room_goto(rm_levelstart);

