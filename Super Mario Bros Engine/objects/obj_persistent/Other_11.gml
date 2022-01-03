/// @description Fade the screen to black

//If this event was called manually
if (mode == 0) {

    //Pixel size
    size = 25.6;

    //Deactivate everything
    instance_deactivate_all(1);
}

//Start fading
done = 0;

//To black
mode = 1;

//Make sure it stops when its done
alarm[2] = 30;

