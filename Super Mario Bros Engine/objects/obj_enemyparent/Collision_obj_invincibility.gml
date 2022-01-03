/// @description Collision with the player while invulnerable

//If the enemy is vulnerable to fireballs
if (vulnerable < 99) {

    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);
    
    //Get some points based on handicap
    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) event_user(other.handicap);
        
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) {
    
        sprite_index = spr_shellthump;
        image_speed = 0.5;
    }
    
    //Kill the enemy
    event_user(0);
}

