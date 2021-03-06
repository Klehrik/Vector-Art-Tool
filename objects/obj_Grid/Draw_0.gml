/// Grid : Draw

// Draw border
draw_rectangle(288, 80, 992, 720, 1);

// Draw shapes
for (var i = 0; i < ds_list_size(DrawQueue); i++)
{
	var shape = DrawQueue[| i];
	with (shape) draw_self();
}

// Draw grid
draw_set_alpha(0.5);
for (var _x = 288; _x < 992; _x += 32) draw_line(_x, 80, _x, 720);
for (var _y = 80; _y < 720; _y += 32) draw_line(288, _y, 992, _y);
draw_set_alpha(1);



// Show selected tool
if (point_in_rectangle(mouse_x, mouse_y, 288, 80, 992, 720))
{
	if (Tool != noone)
	{
		if (Tool == spr_Eraser or Tool == spr_Picker)
		{
			var size = 64;
			draw_sprite_ext(Tool, 0, mouse_x - 16, mouse_y - 56, size / sprite_get_width(Tool), size / sprite_get_width(Tool), 0, c_white, 1);
		}
		else
		{
			var size = 32;
			var mx = mouse_x - 288;
			var my = mouse_y - 80;
			var tx = mx div 32;
			var ty = my div 32;
			draw_sprite_ext(Tool, ToolRotate, tx * 32 + 288, ty * 32 + 80, size / sprite_get_width(Tool) * min(ToolWidth, 22 - tx), size / sprite_get_width(Tool) * min(ToolHeight, 20 - ty), 0, ToolColour, 1);
		}
	}
}



// Export file
// official gms manual says to only create surfaces in the draw event
if (ExportFile == true)
{
	ExportFile = false;
	
	var export = surface_create(704, 640);
	draw_clear_alpha(c_white, 0);
	
	for (var i = 0; i < ds_list_size(DrawQueue); i++)
	{
		var shape = DrawQueue[| i];
		with (shape) draw_self();
	}
	
	surface_copy_part(export, 0, 0, application_surface, 288, 80, 704, 640);
	surface_save(export, get_save_filename("|*.png", "image"));
	surface_free(export);
}
