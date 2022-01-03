/// @description Generate the platform if the generator is inside the view.

//If the generator is inside the view
if (x > __view_get( e__VW.XView, 0 )-48)
&& (x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
&& (!can_freeze()) {

    //Generate a platform
    with (instance_create(x,y,obj_platform)) {
    
        sprite_index = other.sprite;
        speed = other.spd;
        if (other.y > room_height/2)
            direction = 90;
        else
            direction = 270;
    }
    
    //Repeat the process
    alarm[0] = round(60*time);
}

//Otherwise, deny
else
    alarm[0] = 1;

