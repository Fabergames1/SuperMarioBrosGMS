/// @description Player Behaviour (Climb)

//Reset jump state delay
statedelay = 0;

//Reset jump variable
jumping = 0;

//If the player can turn it's direction
if (canhang == 2) {

    //If 'Right' is pressed
    if (keyboard_check(vk_right)) {
    
        //Set the facing direction
        xscale = -1;
        
        //Release the vine if the key has been held enough
        canturn++;
        if (canturn > 19) {
        
            //Force set jump state
            state = cs_jump;
            
            //Disallow climbing
            alarm[3] = 12;     
            canhang = 3;
            
            //Set movement
            hspeed = -(minspd/1.3)*xscale;
            
            //Set the facing direction
            xscale = 1*sign(hspeed);
        }    
    }
    
    //Otherwise, if 'Left' is pressed
    else if (keyboard_check(vk_left)) {
    
        //Set the facing direction
        xscale = 1;
        
        //Release the vine if the key has been held enough
        canturn++;
        if (canturn > 19) {
        
            //Force set jump state
            state = cs_jump;
            
            //Allow climbing
            alarm[3] = 12;
            canhang = 3;
            
            //Set movement
            hspeed = -(minspd/1.3)*xscale;
            
            //Set the facing direction
            xscale = 1*sign(hspeed);
        }
    }
    
    //Otherwise, reset turning variable
    else
        canturn = 0;
}
    
//Move up if 'Up' is held.
if ((keyboard_check(vk_up)) && (!keyboard_check(vk_down))) {

    if (!collision_rectangle(bbox_left,y,bbox_right,y,obj_climb,0,0))
        vspeed = 0;
    else
        vspeed = -1;
}

//Move down if 'Down' is held.
else if ((keyboard_check(vk_down)) && (!keyboard_check(vk_up))) {

    //Move downwards
    vspeed = 1;

    //Check for ground
    while (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_solid,0,0))
        y--;
}

//Otherwise, stop the player
else
    vspeed = 0;

//Make the player jump.
if (keyboard_check_pressed(vk_shift)) {

    //Play 'Jump' sound
    audio_play_sound(snd_jump, 0, false);   
    
    //Force set 'Jump' state
    state = cs_jump;
    
    //Disallow climbing
    alarm[3] = 12;
    canhang = 3;
    
    //End variable jumping
    jumping = 1;
        
    //Set movement
    vspeed = -jumpstr;
    hspeed = -minspd*xscale;
    
    //Move Mario 8 pixels
    x -= 8*sign(xscale);     
    
    //Set the facing direction
    xscale = 1*sign(hspeed);
}

//Makes the player move down when there's not a climbable surface above.
if (!collision_rectangle(bbox_left,y,bbox_right,y+16,obj_climb,0,0)) {

    if (vspeed < 0)
        vspeed = 0
    else {
    
        //Force set 'Jump' state
        state = cs_jump;
                    
        //Disallow climbing
        alarm[3] = 12;
        canhang = 3;
        
        //Move Mario 8 pixels
        x -= 8*sign(xscale);
    }
}

