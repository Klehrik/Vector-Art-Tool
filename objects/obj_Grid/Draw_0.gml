/// Grid : Draw

// Draw border
draw_rectangle(288, 80, 992, 720, 1);

// Draw grid
if (Grid != noone)
{
	draw_set_alpha(0.5);
	for (var _x = 288; _x < 992; _x += 704 / GridWidth) draw_line(_x, 80, _x, 720);
	for (var _y = 80; _y < 720; _y += 640 / GridHeight) draw_line(288, _y, 992, _y);
	draw_set_alpha(1);
}



// Show selected tool
if (point_in_rectangle(mouse_x, mouse_y, 288, 80, 992, 720))
{
	if (Tool != noone)
	{
		if (Tool == spr_Eraser)
		{
			var size = 64;
			draw_sprite_ext(Tool, 0, mouse_x - 16, mouse_y - 48, size / sprite_get_width(Tool), size / sprite_get_width(Tool), 0, c_white, 1);
		}
		else
		{
			var size = 32;
			var mx = mouse_x - 288;
			var my = mouse_y - 80;
			draw_sprite_ext(Tool, ToolRotate, (mx div 32) * 32 + 288, (my div 32) * 32 + 80, size / sprite_get_width(Tool) * ToolWidth, size / sprite_get_width(Tool) * ToolHeight, 0, ToolColour, 1);
		}
	}
}
