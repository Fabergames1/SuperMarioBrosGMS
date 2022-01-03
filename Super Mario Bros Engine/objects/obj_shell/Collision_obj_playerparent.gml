/// @description Special player collision script

//If the player is invulnerable, deny this event
if (instance_exists(obj_invincibility))
exit;

//If the shell can harm the player, do default script
if (ready == 2)
    event_inherited();

//Otherwise, allow kick
else if (ready == 0) {

    //If the player is not moving up
    if (other.vspeed >= 0) {
    
        //Play 'Kick' sound.
        audio_play_sound(snd_kick, 0, false);
        
        //Create hit
        with (instance_create(x,y,obj_smoke)) {
        
            sprite_index = spr_shellthump;
            image_speed = 0.5;
        }
        
        //Get points
        with (instance_create((bbox_left+bbox_right)/2, y, obj_score)) {
        
            if (obj_playerparent.hitcombo < 7)
                event_user(2+obj_playerparent.hitcombo);
            else
                event_user(10);
        }
        
        //Kick
        ready = 1;
        alarm[0] = -1;
        alarm[1] = -1;
        
        //Animate
        image_speed = 0.3;
            
        //Increment combo
        obj_playerparent.hitcombo++;
        
        //If the player is at the left, send the shell to the right
        if (obj_playerparent.x < x) {
        
            hspeed = 3;
            prevhspeed = hspeed;
        }
        
        //Otherwise, send it to the left
        else if (obj_playerparent.x > x) {
        
            hspeed = -3;
            prevhspeed = hspeed;
        }
    }
}

