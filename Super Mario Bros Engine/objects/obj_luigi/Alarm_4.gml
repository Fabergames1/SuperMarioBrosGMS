/// @description Handle player specific eyecandy

//If Luigi is turning and it is making contact with the floor.
if (sprite_index == scr_luigi_skid()) && (state != cs_jump) {

    //If Luigi is not crouched down
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

