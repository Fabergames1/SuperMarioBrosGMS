/// @description Turn into a buzzy beetle if hard mode has been chosen

if (global.hardmode == true) {
    
    instance_create(x,y,obj_buzzybeetle);
    instance_destroy();
    exit;
}

