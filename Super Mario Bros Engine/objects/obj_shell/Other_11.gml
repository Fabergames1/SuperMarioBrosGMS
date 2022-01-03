/// @description Turn into a new shell

with (instance_create(x,y,obj_shell)) {

    sprite_index = other.sprite_index;
    flip = other.flip;
}
instance_destroy()

