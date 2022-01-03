/// @description Create a powerup or a beanstalk

//If the beanstalk has been selected, do not destroy powerups
if (sprout != cs_beanstalk)
    event_user(2);

//Create the new item
with (instance_create(x+8, ystart, obj_powerupsprout)) 
    sprite_index = constant_get_sprite(other.sprout);

