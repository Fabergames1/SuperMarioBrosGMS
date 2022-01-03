/// @description Set up the angle

//If the player does exist, continue
if (instance_exists(obj_playerparent)) {
    
    angle += 11.25*(clockwise*-1);
    if (angle > 360)
        angle -= 360;
}

//Repeat
alarm[1] = 4;

