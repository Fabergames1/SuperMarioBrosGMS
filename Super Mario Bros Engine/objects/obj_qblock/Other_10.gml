/// @description Create a coin

//Inherit event
event_inherited();

//Create a coin if no item was chosen
if (sprout == cs_coin)
    instance_create(x,ystart-16,obj_blockcoin);

