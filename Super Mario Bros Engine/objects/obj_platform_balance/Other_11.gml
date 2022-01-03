/// @description Make both platforms fall.

if (ready == 0) {

    vspeedmax = 1;
    if (y < limit) {
        
        //Make the platform fall.
        speed = 0;
        ready = 1;
        
        //Make the other platform fall.
        with (parent) {
        
            speed = 0;
            ready = 1;
        }
        
        //Give 1000 points
        if (instance_exists(obj_playerparent)) {
        
            with (instance_create(obj_playerparent.x-8,obj_playerparent.y,obj_score))
                event_user(5);
        }
    }   
}
else {

    vspeedmax = 2.5;
}

//Cap vertical speed.
if (vspeed > vspeedmax)
    vspeed = vspeedmax;
if (vspeed < -vspeedmax)
    vspeed = -vspeedmax;

