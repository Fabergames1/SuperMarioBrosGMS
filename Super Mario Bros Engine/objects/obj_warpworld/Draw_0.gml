/// @description Shows destination world

if (instance_exists(obj_warpzone)) {

    //If the destination worlds are showing
    if (obj_warpzone.show == true) {
    
        //Show "WELCOME TO WARP ZONE!"
        if (showwarp == true) {
        
            //Align the text
            draw_set_halign(fa_center);
            
            //Draw text
            draw_text(x, y-128, string_hash_to_newline("WELCOME TO WARP ZONE!"));
            
            //Reset align
            draw_set_halign(fa_left);
        }
        
        //Show destination world
        draw_text(x-4, y-80, string_hash_to_newline(mydest));
    }
}

