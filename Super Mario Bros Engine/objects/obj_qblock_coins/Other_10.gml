/// @description Create coin and activate timer

//Create coin
instance_create(x,ystart-16,obj_blockcoin);

//Activate timer
if (state2 == 0) {

    //Set state
    state2 = 1;
    
    //End timer
    alarm[0] = 240;
}
else if (state2 == 2)
    sprite_index = spr_qblock_empty;

