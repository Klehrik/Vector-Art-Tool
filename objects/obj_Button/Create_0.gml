/// Button : Init

image_speed = 0;

Pressed = false; // Flag if button is pressed

Image = noone;
ImageBlend = c_white;
Tooltip = "This is a button.";
TooltipWidth = 210;
TooltipHeight = 48;



// Functions
function set_size(pixels)
{
	image_xscale = pixels / sprite_get_width(spr_Button);
	image_yscale = pixels / sprite_get_width(spr_Button);
}

function show_tooltip(_x, _y)
{
	// Left side of the screen
	if (_x < room_width / 2)
	{
		draw_rectangle_colour(_x, _y, _x + TooltipWidth, _y + TooltipHeight, c_black, c_black, c_black, c_black, 0);
		draw_rectangle(_x, _y, _x + TooltipWidth, _y + TooltipHeight, 1);
		draw_text(_x + 24, _y + 12, Tooltip);
	}
	
	// Right side of the screen
	else
	{
		draw_rectangle_colour(_x - TooltipWidth, _y, _x, _y + TooltipHeight, c_black, c_black, c_black, c_black, 0);
		draw_rectangle(_x - TooltipWidth, _y, _x, _y + TooltipHeight, 1);
		draw_text(_x + 24 - TooltipWidth, _y + 12, Tooltip);
	}
}


