/// @description Pop out from the shell

//If the koopa shell has not been kicked
if (ready == 0) {
    
    //Check sprite
    switch (sprite_index) {
    
        //Green Koopa
        case (spr_shell): {
        
            instance_create(x,y,obj_koopa);
            instance_destroy();            
        } break;
        
        //Red Koopa
        case (spr_shell_red): {
        
            instance_create(x,y,obj_koopa_red);
            instance_destroy();            
        } break;
        
        //Buzzy Beetle
        case (spr_shell_buzzy): {        
        
            instance_create(x,y,obj_buzzybeetle);
            instance_destroy();              
        } break;
    }
}

