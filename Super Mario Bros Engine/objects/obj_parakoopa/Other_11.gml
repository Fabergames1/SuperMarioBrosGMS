/// @description Turn into a regular koopa

with (instance_create(x,y,obj_koopa)) {

    hspeed = 0.5*other.xscale;
}
instance_destroy();

