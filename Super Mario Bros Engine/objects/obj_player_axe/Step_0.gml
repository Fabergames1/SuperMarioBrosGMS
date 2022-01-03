/// @description Player goal logic

//Execute default event.
event_inherited();

//First, check if mario touched the axe.
if (ready == 0) {

    if (x > obj_axe.x+32) {
    
        //Snap to position and stop.
        x = obj_axe.x+32;
        hspeed = 0;
        
        //Wait until bowser falls
        ready = 1;
        
        //Set the facing direction.
        xscale = -1;
    }
}
else if (ready == 1) {

    if (instance_number(obj_bowser) == 0)
    && (instance_number(obj_bridge) == 0) {
    
        //Play 'World Clear' theme.
        audio_play_sound(bgm_worldclear, 0, 0);
    
        //Set the horizontal speed.
        hspeed = 1.5;
        
        //Go see toad
        ready = 2;
        
        //Set the facing direction.
        xscale = 1;
        
        //Set the speed of the view
        room_width = prevwidth+256;             
    }
}
else if (ready == 2) {

    //Look for the nearby toad
    toad = collision_rectangle(x+40,bbox_top,x+41,bbox_bottom,obj_toad,0,1);
    
    //If toad is present
    if (toad) 
    && (x > toad.x-40) {
    
        with (toad) {
            
            //Make him jump
            alarm[3] = 60;
            
            //Show message.
            alarm[0] = 60;
        }
        
        //Stop right there, listen toad.
        ready = 3;
        hspeed = 0;
        
        //Snap to toad position
        x = toad.x-40;
    }
}

//Update view
if (ready > 1)
    obj_levelcontrol.x += 1.5;

