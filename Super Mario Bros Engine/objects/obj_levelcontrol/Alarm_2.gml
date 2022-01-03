/// @description Decrement time

//If there's still time left
if (instance_exists(obj_playerparent)) 
&& (global.time > 0) {

    //Decrement it by 1
    global.time--;
    
    //Repeat the process
    alarm[2] = 24;
    
    //If there's 100 seconds left, warn the player
    if (global.time == 101)
        alarm[3] = 24;
        
    //Otherwise, if there's 0 seconds left, kill the player.
    else if (global.time == 1)
        alarm[4] = 25;
}
else
    alarm[2] = 1;

