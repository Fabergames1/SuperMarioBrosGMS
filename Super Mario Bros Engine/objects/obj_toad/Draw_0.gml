/// @description Draw Toad and 'Thank you, Mario' text.

//Draw toad
draw_sprite_ext(sprite_index, -1, x, y+1, 1, 1, image_angle, c_white, 1);

//Align the text
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Set the text colour
draw_set_color(c_white);

//Set the text alpha
draw_set_alpha(1);

//Display 'THANK YOU MARIO!'
if (display > 0)    
    draw_text(__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+72,string_hash_to_newline(string_upper("THANK YOU MARIO!")));
    
//Display 'BUT OUR PRINCESS'
if (display > 1)
    draw_text(__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+104,string_hash_to_newline(string_upper("BUT OUR PRINCESS")));    

//Display 'IS IN ANOTHER CASTLE'
if (display > 2)
    draw_text(__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+120,string_hash_to_newline(string_upper("IS IN ANOTHER CASTLE!")));      

//Re-align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

