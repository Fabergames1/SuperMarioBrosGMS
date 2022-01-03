/// @description Destroy if hard mode is not active

xmin = 0;
xmax = 2208;
if (global.hardmode == false)
    instance_destroy();
