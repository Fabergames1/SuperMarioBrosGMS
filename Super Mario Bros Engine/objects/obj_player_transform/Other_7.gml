/// @description If the animation has ended and no more loops are needed.

if (ready) {

    //Does the animation still loop.
    if (loop > 0)
        loop--;
    
    else {
        
        //Activate all instances.
        /*instance_activate_all();
        
        tile_layer_show(15)
        tile_layer_show(12)
        tile_layer_show(9)*/
        
        //Destroy
        instance_destroy();
    }
}

/* */
/*  */
