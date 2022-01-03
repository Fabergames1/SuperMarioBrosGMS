/// @description Deals with the application surface, window size.

//Disable alpha blending
draw_enable_alphablend(false);

//Set the pixelate shader
if (done < 1) 
&& (tr_pixel == true) {

    shader_set(shd_pixel);
    shader_set_uniform_f(pixel, global.gw, global.gh, size, size);
}

//Draw a rectangle
draw_rectangle_colour(0,0,global.gw*(filter+1),global.gh*(filter+1),c_black,c_black,c_black,c_black,0);

//Draw the application surface
draw_surface_stretched(application_surface,port_x*(filter+1),port_y*(filter+1),global.gw*(filter+1),global.gh*(filter+1));

//Reset the shader
shader_reset();

//Enable alpha blending
draw_enable_alphablend(true);

//Fades the screen to and from black
if (done < 1) {

    done += 1/30;
    
    //Fade from black
    if (mode = 0) {
    
        draw_set_alpha(1-done);             
        size -= 1.28;
    }

    //Fade to black
    else {
    
        draw_set_alpha(done);
        size += 1.28;
    }

    //Draw the fade
    draw_set_color(c_black)
    draw_rectangle(0,0,global.gw*(filter+1),global.gh*(filter+1),0);
    draw_set_alpha(1)
    draw_set_color(c_white)
}

