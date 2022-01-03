/// @description Enter castle

if (instance_exists(obj_incastle)) {

    //Do the victory pose
    if (ready2 == 0) 
    && (x > obj_incastle.x) {
    
        //Snap in castle door
        x = obj_incastle.x;
    
        //Stop in the door
        ready2 = 1;
        
        //Stop moving
        hspeed = 0;
        
        //Move again after a while
        alarm[3] = 60;
    }    
    else if (x > obj_incastle.x+8) {
    
        //Set up in-door state
        if (ready == 2)
            ready = 4;

        //If the object is in-door state, make him enter
        else if ((ready == 4) && (x > obj_incastle.x+24)) {
        
            //Snap to the castle's door
            x = obj_incastle.x+26;
            
            //Inside castle state
            ready = 5;
            
            //Stop moving
            hspeed = 0;
            
            //Begin countdown state
            event_user(15);
        }
    }
    
    //Decrement alpha
    if (ready2 == 2)
    && (x > obj_incastle.x)
        image_alpha -= 0.05;
}

