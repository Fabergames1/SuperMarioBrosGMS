/// @description Collision with the player while invulnerable

//If the shell has been kicked
if (other.ready > 0) {
    
    //If the enemy is vulnerable to fireballs
    if (vulnerable < 99) {
        
        //Get points based on combo
        if (other.hitcombo == 0) { //500 points
        
            audio_play_sound(snd_kick2, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(3);
        }
        else if (other.hitcombo == 1) { //800 points
        
            audio_play_sound(snd_kick3, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(4);
        }
        else if (other.hitcombo == 2) { //1000 points
        
            audio_play_sound(snd_kick4, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(5);
        }
        else if (other.hitcombo == 3) { //2000 points
        
            audio_play_sound(snd_kick5, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(6);
        }
        else if (other.hitcombo == 4) { //4000 points
        
            audio_play_sound(snd_kick6, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(7);
        }
        else if (other.hitcombo == 5) { //5000 points
        
            audio_play_sound(snd_kick7, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(8);
        }
        else if (other.hitcombo == 6) { //8000 points
        
            audio_play_sound(snd_kick8, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(9);
        }
        else if (other.hitcombo > 6) { //1-UP
    
            audio_play_sound(snd_1up, 0, false);
            audio_play_sound(snd_kick, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(10);
        }
        
        //Increment combo
        other.hitcombo++;
            
        //Create 'Spinthump' effect
        with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) {
        
            sprite_index = spr_shellthump;
            image_speed = 0.5;
        }
        
        //Kill the enemy
        event_user(0);
    }
}

