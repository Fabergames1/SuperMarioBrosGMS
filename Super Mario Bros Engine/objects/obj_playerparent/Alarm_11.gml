/// @description Handle powerup specific projectiles

//If controls are not disabled
if (disablecontrol == false) {

    //If the player is not crouched down
    if (crouch == false) {
    
        //If the player has the fire powerup
        if (global.powerup == cs_fire) {
        
            //If there's less than 2 fireballs on screen
            if (instance_number(obj_fireball) < 2) {
            
                firing = 6;
                with (instance_create(x+4*sign(xscale),y-12,obj_fireball)) {
                
                    hspeed = 3.5*other.xscale;
                    image_xscale = other.xscale;
                }
            }
        }
    }
}

