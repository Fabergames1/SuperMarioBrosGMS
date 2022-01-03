/// @description Create fireworks
    
//If there's not fireworks
if (global.fireworks == 0)    
    alarm[5] = 120;

else {

    //If there's more than 1 fireworks
    if (global.fireworks > 1) {
    
        //Play 'Firework' sound
        audio_play_sound(snd_firework, 0, false);
    
        //Spawn a firework
        with (instance_create(obj_incastle.x+random_range(-64,48), __view_get( e__VW.YView, 0 )+random_range(32,64), obj_smoke)) {
        
            sprite_index = spr_firework;
            move_snap(16,16);
            score += 500;
            image_speed = 0.3;
        }
          
        //Decrease amount of firework
        global.fireworks--;
        
        //Repeat
        alarm[4] = 30;
    }
    else {
    
        //Play 'Firework' sound
        audio_play_sound(snd_firework, 0, false);
            
        //Spawn a firework
        with (instance_create(obj_incastle.x+random_range(-64,48), __view_get( e__VW.YView, 0 )+random_range(32,64), obj_smoke)) {
        
            sprite_index = spr_firework;
            move_snap(16,16);
            score += 500;
            image_speed = 0.3;
        }
          
        //Decrease amount of firework
        global.fireworks = 0;
        
        //Repeat
        alarm[5] = 120;        
    }
}

