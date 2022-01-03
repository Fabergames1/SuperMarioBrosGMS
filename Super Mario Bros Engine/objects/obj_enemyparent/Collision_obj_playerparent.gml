/// @description Collision with the player

//If the player is invulnerable, exit
if (instance_exists(obj_invincibility))
exit;

//If the enemy is invulnerable to stomp or the player is invulnerable
if (stomp != -1)
|| (other.invulnerable == -1) {

    //If the player is above the enemy and moving down
    if (other.bbox_bottom < bbox_top-vspeed+5) 
    && (other.vspeed >= 0) {
    
        //If the enemy can be stomped and it is not underwater
        if (stomp == 0)
        && (other.swimming == false) { 
        
            //Play 'Stomp' sound
            audio_play_sound(snd_stomp, 0, false);
        
            //Prevent certain enemies from getting double stomped
            if (vspeed < 0) {
            
                y = yprevious;
                if (other.vspeed > 0)
                    other.y = other.yprevious;
            }
            
            //Bounce the player
            with (other) event_user(1);

            //Get points based on combo
            if (other.hitcombo <= 10-handicap_stomp) {
            
                //If the player did 10 or less consecutive stomps
                with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
                    event_user((0+other.handicap_stomp)+obj_playerparent.hitcombo);
            }
            else {
            
                with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
                    event_user(10);
            }
            
            //Increment combo
            other.hitcombo++;
            
            //Stomp the enemy
            event_user(1);
        }
        
        //Otherwise, hurt the player
        else
            with (other) event_user(0);  
    }
    
    //Otherwise, hurt the player
    else
        with (other) event_user(0);
}

