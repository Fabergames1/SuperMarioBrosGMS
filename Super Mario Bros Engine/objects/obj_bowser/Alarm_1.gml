/// @description Make bowser breathe fire if looking at the left

//If facing left
if (xscale == -1) {

    //Set the breathing sprite
    sprite_index = spr_bowser_breathe;
    
    //Animate
    image_speed = 0;
    image_index = 0;
    
    //Breathe fire
    alarm[2] = 30;
}
else
    alarm[1] = 1;

