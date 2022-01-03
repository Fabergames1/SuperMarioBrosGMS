/// @description Save Fullscreen + Window size + VSync Settings

keyboard_key_release(vk_control);

//Open the file
var file = file_text_open_write("settings.dat");

//Save fullscreen settings
file_text_write_string(file,string(fullscreen));
file_text_writeln(file);

//Save filtering settings
file_text_write_string(file,string(filter));
file_text_writeln(file);

//Save vsync settings
file_text_write_string(file,string(vsync));

//Close the file
file_text_close(file);

