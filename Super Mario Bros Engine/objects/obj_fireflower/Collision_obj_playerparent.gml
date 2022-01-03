/// @description Turn into Super Mario/Luigi if small or into Fire Mario/Luigi if big.

//Play 'Powerup' sound
audio_play_sound(snd_powerup, 0, false);

//Get 1000 points
with (instance_create(x-8,y,obj_score)) event_user(5);

//If the player is small, turn into the Super form
if (global.powerup == cs_small) {

    //Set 'Super' powerup
    global.powerup = cs_super;
    
    //Stop jump
    if (other.jumping > 0)
        other.jumping = 2;
    
    //Create transformation object
    with (instance_create(0,0,obj_player_transform))
        sequence = 0;
}

//Otherwise, turn into the fire form
else if (global.powerup == cs_super) {

    //Set 'Fire' powerup
    global.powerup = cs_fire;
    
    //Stop jump
    if (other.jumping > 0)
        other.jumping = 2;
    
    //Create transformation object
    with (instance_create(0,0,obj_player_transform))
        sequence = 1;    
}

//Destroy
instance_destroy();

