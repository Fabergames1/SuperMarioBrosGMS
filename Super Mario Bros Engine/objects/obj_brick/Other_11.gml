/// @description Create shards

with (instance_create(x,y,obj_shard)) {

    motion_set(120,6); 
    image_index = 0;
}
with (instance_create(x,y+8,obj_shard)) {

    motion_set(135,6); 
    image_index = 2;
}
with (instance_create(x+8,y,obj_shard)) {
    
    motion_set(60,6); 
    image_index = 1;
}
with (instance_create(x+8,y+8,obj_shard)) {

    motion_set(45,6); 
    image_index = 3;
}

