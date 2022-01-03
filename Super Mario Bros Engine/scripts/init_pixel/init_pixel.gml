/// @description init_pixel(0...1);
/// @param 0...1
function init_pixel() {

	/*
	**  Usage:
	**      init_pixel(0...1);
	**
	**  Returns:
	**      Initializes the variables needed for the pixel shader to work properly
	*/

	//Pixel Size
	size = argument[0]*25.6;

	//Set shader uniform
	pixel = shader_get_uniform(shd_pixel,"pixel");



}
