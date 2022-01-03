/// @description Default enemy stomp script

//Create dead object
imdead = instance_create(x,y,obj_enemy_stomped);

//Make the dead object hereby the sprite
imdead.sprite_index = sprite_index;

//Make the dead object hereby the scale
imdead.image_xscale = xscale;

//Destroy
instance_destroy();

