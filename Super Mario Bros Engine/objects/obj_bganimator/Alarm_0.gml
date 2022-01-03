/// @description Animate the background

//Set the background to the next one.
__background_set( e__BG.Index, bg_index, bg_frame[numb] );

//Increment frame of animation
numb++;
if (numb == array_length_1d(bg_frame)) {

    numb = 0;
}
    
//Continue the animation.
alarm[0] = bg_timer;

