/// @description Collision with a fireball

//If the enemy is vulnerable to fireballs
if (vulnerable == 0) {

    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);

    //Kill the enemy
    event_user(0);
    
    //Get some points based on handicap
    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
        event_user(other.handicap);
}

//Destroy the fireball
if (vulnerable < 100)
    with (other) event_user(0);

