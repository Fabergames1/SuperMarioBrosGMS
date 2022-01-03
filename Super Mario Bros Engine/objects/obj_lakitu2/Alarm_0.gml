/// @description Throw a spiny

//If inside view and not going away
if (x > __view_get( e__VW.XView, 0 )-16)
&& (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) 
&& (goaway == 0) {

    //If there's 3 or more spinies in view
    if (instance_number(obj_spiny) >= 3)
        image_index = 1;
        
    //Otherwise, if the enemy is overlapping a solid
    else if (place_meeting(x, y, obj_solid))
        image_index = 1;
        
    //Otherwise, throw an egg
    else {
    
        image_index = 1;
        alarm[1] = 15;        
    }
}

//Repeat the process
if (floor(random(2)) == 0)
    alarm[0] = 72;
else
    alarm[0] = 144;

