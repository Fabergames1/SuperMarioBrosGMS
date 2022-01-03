/// @description Create a firebar on hard mode

if (global.hardmode == 1) {

    with (instance_create(x,y,obj_firebar_fast)) {
    
        clockwise = other.clockwise;
        length = other.length;
        angle = other.angle;
        createblock = false;        
    }
}

//Create a block
instance_create(x,y,obj_emptyblock);

