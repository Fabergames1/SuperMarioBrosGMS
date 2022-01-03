/// @description Koopa shell logic

//Make invulnerable to fire
if (sprite_index == spr_shell_buzzy)
    vulnerable = 1;

//If the player dies, stop everything
if (can_freeze()) {

    scr_freeze();
    exit;
}

//When kicked
if (ready > 0) {
    
    //Check nearby blocks
    if (ready == 2)
    && (sign(hspeed) != sign(prevhspeed)) {
    
        //If moving right
        if (hspeed > 0) {
        
            with (instance_create(x-5,y,obj_smoke)) {
            
                sprite_index = spr_shellthump;
                image_speed = 0.5;
            }
        }
        
        //Otherwise, if moving left
        else if (hspeed < 0) {
        
            with (instance_create(x+5,y,obj_smoke)) {
            
                sprite_index = spr_shellthump;
                image_speed = 0.5;
            }                    
        }
         
        //Previous horizontal speed
        prevhspeed = hspeed;
    
        //Play 'Bump' sound if inside the view
        if (!audio_is_playing(snd_bump)) {
    
            if (x > __view_get( e__VW.XView, 0 )-16)
            && (x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
                audio_play_sound(snd_bump, 0, false);     
        }
    }
    
    //Slow down when falling
    event_user(7);
        
    //Allow shell to harm the player
    if (instance_exists(obj_playerparent))
    && (ready == 1)
    && (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,0))
        ready = 2;
}

//Otherwise, if not moving
else {

    if (collision_rectangle(x,bbox_bottom-1,x,bbox_bottom+1,obj_solid,0,0))
    && (hspeed != 0)
        hspeed = 0;
}

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//Destroy when outside the view
if (x < __view_get( e__VW.XView, 0 )-64)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64)
    instance_destroy();

