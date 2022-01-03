/// @description Check if the beanstalk is stopped and stop if so.

if (mom.vspeed == 0) {

    //Stop vertical movement
    vspeed = 0;
    
    //Snap in position
    move_snap(16,16);
}

