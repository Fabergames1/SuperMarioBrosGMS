/// @description Check sprite

//Set up the palette
switch (sprite_index) {

    //Goomba
    case (spr_goomba): {
    
        palette_index = pal_goomba;
    } break;
    
    //Koopa
    case (spr_shell): {
    
        palette_index = pal_koopa;
    } break;
    
    //Hammer Bro
    case (spr_hammerbro): {
    
        palette_index = pal_hammerbro;
    } break;
}

//Go upside down
image_yscale = -1;

//Move 16 pixels below if the sprite yoffset is lower than 16
if (sprite_get_yoffset(sprite_index) < 16)
    y += 16;

