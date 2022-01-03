/// @description Player goal logic

//When in the physics or countdown state
if ((ready == 2) || (ready == 3)) {

    //Prevent physics parent from destroying (Hack)
    if (bbox_top > room_height) {
    
        //If it's moving to the right...
        if (ready = 2) then hspeed = -1
        
        //Stay invisible on the bottom of the view
        y = room_height-32;
        visible = 0;
    }

    //Default event
    event_inherited();

    //If Mario reached a wall or fell out of the room when in the physics state
    if (ready = 2) {
    
        if (hspeed < 0) {

            //Countdown state
            ready = 3;
    
            //Begin countdown state
            event_user(15);
    
            //Stop walking
            hspeed = 0;
        }
        else {
        
            if (ready2 != 1) {
            
                //Set horizontal speed
                hspeed += 0.07;
                if (hspeed > 1.5)
                    hspeed = 1.5;
            }
        }
    }
}

//Animate
event_user(13);

//Enter castle
event_user(14);

