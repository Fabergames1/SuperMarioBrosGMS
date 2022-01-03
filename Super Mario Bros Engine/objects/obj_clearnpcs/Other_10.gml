/// @description Remove enemies at checkpoints or warps

//Check for a instance
var inst;
inst = instance_place(x+8, y+8, obj_enemyparent);

//If an instance exists
if (inst != noone) {

    //If the level started with a checkpoint
    if (mode == 0) {
    
        if (inst.x > global.checkpoint.x - (global.gw/2) - 48)
        && (inst.x < global.checkpoint.x + (global.gw/2) + 48)
            with (inst) instance_destroy();
    }
    
    //Otherwise, if the level started via warping
    else if (mode == 1) {
    
        //If the instance is inside the view
        if (inst.x > global.postx - (global.gw / 2))
        && (inst.x < global.postx + (global.gw / 2))   
            with (inst) instance_destroy();        
    }
}

