/// @description Create daze effect

with (instance_create(x+random_range(-8, 8), bbox_top-5, obj_smoke)) {

    sprite_index = spr_daze;
}
alarm[5] = 8;

