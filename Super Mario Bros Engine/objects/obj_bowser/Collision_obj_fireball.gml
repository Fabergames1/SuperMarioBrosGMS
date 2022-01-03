/// @description Damage bowser

//Show hurt poses
cooldown = 4;

//If number of hits is smaller than 2, start dazing
if (hits > 1) {

    //Decrement hits
    hits--;
    
    //Start dazing
    if (hits < 3)
        alarm[5] = 4;
}

//Otherwise it hits is equal to 1, inherit default event
else {

    event_inherited();    
}

//Destroy fireball
with (other) event_user(0);

