/// @description Bumped by a block

//Set the vertical speed
vspeed = -3;

//Move up
y--;

//Set the horizontal speed
if (hspeed == 0)
    hspeed = 0.8;
else {

    if (x > other.x+sprite_width/2)
        hspeed = 0.8;
    else if (x < other.x+sprite_width/2)
        hspeed = -0.8;        
}

//Speed up if hard mode is on
if (global.hardmode) then hspeed = hspeed*2;
    
//Get some points
with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) 
    event_user(0);

