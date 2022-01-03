/// @description Throw a hammer

//If the player does not exist or the player is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    with (instance_create(x+2,y-2,obj_hammer)) {
    
        hspeed = -1;
        image_xscale = -1;
    }
}
else {

    with (instance_create(x-2,y-2,obj_hammer)) {
    
        hspeed = 1;
        image_xscale = 1;
    }    
}

//Set the default sprite.
sprite_index = spr_hammerbro;

//Throw another hammer.
alarm[2] = 7+random(round(28));

