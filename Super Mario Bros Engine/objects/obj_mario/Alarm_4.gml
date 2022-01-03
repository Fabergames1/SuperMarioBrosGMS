/// @description Handle player specific eyecandy

//If Mario is turning and it is making contact with the floor.
if (sprite_index == scr_mario_skid()) && (state != cs_jump) {

    //If Mario is not crouched down
    if (crouch == false) {
    
        alarm[4] = 4;
        with (instance_create(x,bbox_bottom-4,obj_smoke)) {
        
            sprite_index = spr_smoke_skid;
            image_speed = 0.3;
        }
    }
    else
        alarm[4] = 1;
}
else
    alarm[4] = 1;

