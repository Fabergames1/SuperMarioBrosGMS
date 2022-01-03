/// @description Collision with bumped bricks

//If the enemy is not invulnerable
if (vulnerable < 99) {
    
    //Play 'Kick sound
    audio_play_sound(snd_kick, 0, false);
    
    //Kill or flip the enemy
    event_user(6);
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) {
    
        sprite_index = spr_shellthump;
        image_speed = 0.5;
    }
        
    //Get some points
    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) 
        event_user(other.handicap);
}

