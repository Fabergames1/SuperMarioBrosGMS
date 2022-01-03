/// @description Draw player faces

if (drawbonus == 1) {

    //Draw Mario's face
    if (global.player == 0) {
    
        draw_background(bgr_bonus_mario, 0, 0);
        draw_background(bgr_bonus_mario, room_width-256, 0);
    }
    
    //Otherwise, draw Luigi's face
    else {
    
        draw_background(bgr_bonus_luigi, 0, 0);
        draw_background(bgr_bonus_luigi, room_width-256, 0);            
    }
}

