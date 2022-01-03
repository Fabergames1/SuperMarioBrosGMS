/// @description Handle position and instance deactivation

//Set the target
event_user(2);

//If the target exists
if (target != noone) {

    //If the camera is way far away from the room width
    if (x-128 < room_width-256) {
    
        //If the target is greater than x
        if (target.x+8 > x) {
        
            x = target.x+8;
            hspeed = 0;
        }
        
        //Otherwise
        else {
        
            //If the target is the player object
            if (target == obj_playerparent) {
            
                //If the horizontal speed is greater than 0.5
                if (target.hspeed > 0.5) {
                
                    //If the player object x is lower than x-32
                    if (obj_playerparent.x > x-32)
                        hspeed = target.hspeed-0.5;
                    else
                        hspeed = 0;
                }
                else
                    hspeed = 0;
            }
            
            //Otherwise, if the target is climbing down a flagpole
            else if (target == obj_player_goal) {
            
                //If the horizontal speed is greater than 0.5
                if (target.hspeed > 0.5) {
                
                    //If the player object x is lower than x-32
                    if (obj_player_goal.x > x-32)
                        hspeed = target.hspeed-0.5;
                    else
                        hspeed = 0;
                }
                else
                    hspeed = 0;                      
            }
        }
    }
    
    //Otherwise
    else {
    
        hspeed = 0;
        x = xprevious;
    }
    
    //Prevent the camera from reaching the right-edge
    if (x > room_width-128)
        x = room_width-128;
}

//Otherwise, stop it
else
    hspeed = 0;

//Prevent the player from getting outside the view and set the view speed
if (barrier == 0) {

    event_user(0);
    __view_set( e__VW.HSpeed, 0, 10 );
}
else
    __view_set( e__VW.HSpeed, 0, -1 );

//Deactivate enemies outside the view
instance_deactivate_object(obj_bowserparent);
instance_deactivate_object(obj_deactenemyparent);
instance_deactivate_object(obj_deactivateparent);

//Activate deactivated instances inside the activation region
instance_activate_region(__view_get( e__VW.XView, 0 ) - 32, __view_get( e__VW.YView, 0 ) - 32, __view_get( e__VW.WView, view_current ) + 96, __view_get( e__VW.HView, view_current ) + 32, true);

///Handle music speed and update background position

//Do not modify if the music has not been set
if (levelmusic != noone) {
    
    //If the level has a given amount of time to beat.
    if (leveltime > 0) {
    
        //If the time is lower than 100
        if (global.time < 101) {
        
            //Speed up level music
            audio_sound_pitch(global._music[levelmusic],1.3);
            
            //Speed up 'Invincible' music
            audio_sound_pitch(bgm_invincible, 1.3);
        }
        else {
        
            //Set normal pitch
            audio_sound_pitch(global._music[levelmusic],1);
                    
            //Speed up 'Invincible' music
            audio_sound_pitch(bgm_invincible, 1);        
        }
    }
    else {
    
        //Set normal pitch
        audio_sound_pitch(global._music[levelmusic],1);
            
        //Speed up 'Invincible' music
        audio_sound_pitch(bgm_invincible, 1);    
    }
}

//Set the x position of the view.

__view_set( e__VW.XView, view_current, min(max(0,x-__view_get( e__VW.WView, view_current )/2), room_width-__view_get( e__VW.WView, view_current )) )

