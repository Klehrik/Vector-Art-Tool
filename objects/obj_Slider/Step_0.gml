/// Slider : Step

// Pick HSV
if (mouse_check_button(mb_left))
{
	if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
	{
		Pointer = (mouse_x - x) / sprite_width;
	}
}

// Send data to obj_Grid
if (image_index == 0) obj_Grid.ToolColourHSV[0] = Pointer * 255;
else if (image_index == 1) obj_Grid.ToolColourHSV[1] = Pointer * 255;
else if (image_index == 2) obj_Grid.ToolColourHSV[2] = Pointer * 255;
