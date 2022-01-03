/// @description Make bowser jump if he is looking to the left

//If facing left
if (xscale == -1) {

    //If in ground
    if (jumping == 0) {
    
        //Hop
        vspeed = -2.5;
        
        //Jump
        jumping = 1;
        
        //Move up
        y--;
    }
}
else
    alarm[0] = 1;

