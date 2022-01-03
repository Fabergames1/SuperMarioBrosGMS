/// @description Mark as checked

if (check == 0) 
&& (other.x > x+8) {

    //Play 'Correct' sound
    audio_play_sound(snd_correct, 0, false);

    //Check it
    check = 1;
    
    //Increment parent numb
    with (parent) numb++;
}

