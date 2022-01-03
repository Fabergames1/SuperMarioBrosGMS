/// @description Make visible and create beanstalk

//Make visible
visible = 1;

//Create a climbable vine
myvine = instance_create(x-8,room_height,obj_beanstalk);
with (myvine) {

    limit = other.ystart-32;
}

