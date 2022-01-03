/// @description Generate cheep cheeps

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise,
else {

    //If the player is inside the spawning area
    if (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {
    
        //Check if there's 3 or less cheep cheeps
        if (instance_number(obj_redcheep) < 3) {
        
            //Repeat
            alarm[0] = 72;
        
            //Generate a cheep-cheep
            if (random(round(1) == 1))
                instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+8, __view_get( e__VW.YView, 0 )+round(random_range(64,176)),obj_redcheep);
            else
                instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+8, __view_get( e__VW.YView, 0 )+round(random_range(64,176)),obj_greencheep);
        }
        
        //Otherwise, delay
        else {
        
            alarm[0] = 1;
            exit;
        }
    }
    
    //Otherwise, delay
    else {
    
        alarm[0] = 1;
        exit;
    }
}

