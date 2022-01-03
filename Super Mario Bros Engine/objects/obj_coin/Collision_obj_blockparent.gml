/// @description Collect the coin

//If the block is moving up
if (other.vspeed < 0) {
    
    //Create block coin
    instance_create(x,ystart-16,obj_blockcoin);
    
    //Destroy
    instance_destroy();
}

