/// Button : Init

image_speed = 0;

Pressed = false; // Flag if button is pressed



// Functions
function set_size(pixels)
{
	image_xscale = pixels / sprite_get_width(spr_Button);
	image_yscale = pixels / sprite_get_width(spr_Button);
}
