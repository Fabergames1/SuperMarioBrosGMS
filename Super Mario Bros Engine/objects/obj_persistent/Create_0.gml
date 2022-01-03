/// @description SMBEngine Persistent Object

//Initialize the palette swapping system
pal_swap_init_system(shd_palette_swapper, false);

//Initialize global variables
init_globals_mus();
init_globals();
init_pixel(1);

//Pixelate screen?
tr_pixel = false;

//How the screen is fading
//0: From black, 1: To black
mode = 0

//How much the screen is faded
done = 0

//Ports
port_x = 0;
port_y = 0;

//Game width
global.res[0] = 256;
global.res[1] = 320;
global.res[2] = 426;
global.gw = global.res[2];

//Game height
global.gh = 240;

//Key variables
global._controlkey      = vk_control;
global._shiftkey        = vk_shift;
global._enterkey        = vk_enter;
global._upkey           = vk_up;
global._downkey         = vk_down;
global._leftkey         = vk_left;
global._rightkey        = vk_right;

//Set the in-game fonts
global.hud_font = font_add_sprite(spr_hudfont,ord("!")-2, 0, 0);
global.hud_fontr = font_add_sprite(spr_hudfont_red,ord("!")-2, 0, 0);

//Set the epsilon value for floating point numbers
math_set_epsilon(0.0001);

//Disable application surface automatic drawing
application_surface_draw_enable(false);

