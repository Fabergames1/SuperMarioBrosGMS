/// @description Turn into a red piranha plant if hard mode is selected

if (global.hardmode == true) {
    
    instance_create(x,y,obj_piranhaplant_red);
    instance_destroy();
    exit;
}

