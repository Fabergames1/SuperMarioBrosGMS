/// @description Create same item when maze restarts

//Activate the old enemy
instance_activate_object(myID);

//Destroy it
with (myID) instance_destroy();

