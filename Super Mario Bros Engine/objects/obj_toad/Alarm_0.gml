/// @description Display 'Thank you mario!'.

//If the text is not fully displayed
if (display < 3) {

    display++;
    alarm[0] = 60;
}

//Otherwise, take points off the time and add to score
else
    alarm[1] = 120;

