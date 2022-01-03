/// @description Create a beanstalk.

if (vspeed < 0) {

    ID = instance_create(x,ystart,obj_beanstalk_b);
    with (ID) {
    
        //Set this object as parent.
        mom = other.id;
        
        //Set vertical speed.
        vspeed = -0.5;
    }
}
alarm[0] = 32;

