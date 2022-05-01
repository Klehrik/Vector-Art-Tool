/// Grid : Step

// Make tool colour
ToolColour = make_color_hsv(ToolColourHSV[0], ToolColourHSV[1], ToolColourHSV[2]);


// Select tool (hotkeys)
if (keyboard_check_pressed(ord("E"))) { Tool = spr_Eraser; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("W"))) { Tool = spr_Picker; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("A"))) { Tool = spr_Square; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("S"))) { Tool = spr_HalfSquare; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("D"))) { Tool = spr_HalfTriangle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("F"))) { Tool = spr_Triangle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("Z"))) { Tool = spr_Circle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("X"))) { Tool = spr_Semicircle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("C"))) { Tool = spr_CircleQuarter; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("V"))) { Tool = spr_CircleInvertedQuarter; reset_shape_modifiers(); }


// Rotate shape tool
if (keyboard_check_pressed(ord("Q")))
{
	ToolRotate += 1;
	var w = ToolWidth; // Flip Width and Height for proper rotation
	ToolWidth = ToolHeight;
	ToolHeight = w;
}
if (ToolRotate > 3) ToolRotate = 0;


// Scale shape tool
if (keyboard_check_pressed(ord("1"))) ToolWidth += 1;
else if (keyboard_check_pressed(ord("3"))) ToolWidth -= 1;
if (keyboard_check_pressed(ord("2"))) ToolHeight += 1;
else if (keyboard_check_pressed(ord("4"))) ToolHeight -= 1;
ToolWidth = clamp(ToolWidth, 1, 20);
ToolHeight = clamp(ToolHeight, 1, 20);


// Use tool
if (mouse_check_button(mb_left))
{
	// Check if a tool is selected and within the canvas
	if (Tool != noone and point_in_rectangle(mouse_x, mouse_y, 288, 80, 992, 720))
	{
		if (Tool == spr_Eraser)
		{
			var shape = instance_position(mouse_x, mouse_y, obj_Shape);
			if (shape != noone)
			{
				var pos = ds_list_find_index(DrawQueue, shape.id);
				if (pos != -1)
				{
					ds_list_delete(DrawQueue, pos);
					instance_destroy(shape);
				}
			}
		}
		else if (Tool == spr_Picker)
		{
			var shape = instance_position(mouse_x, mouse_y, obj_Shape);
			if (shape != noone)
			{
				// Modify the sliders directly
				with (obj_Slider)
				{
					if (image_index == 0) Pointer = color_get_hue(shape.image_blend) / 255;
					else if (image_index == 1) Pointer = color_get_saturation(shape.image_blend) / 255;
					else if (image_index == 2) Pointer = color_get_value(shape.image_blend) / 255;
				}
			}
		}
		
		// Place shape
		else
		{
			var mx = mouse_x - 288;
			var my = mouse_y - 80;
			var tx = mx div 32;
			var ty = my div 32;
			if !(MousePrevGridLocation[0] == tx and MousePrevGridLocation[1] == ty)
			{
				var shape = instance_create_depth(tx * 32 + 288, ty * 32 + 80, 0, obj_Shape);
				shape.sprite_index = Tool;
				shape.image_index = ToolRotate;
				shape.image_blend = ToolColour;
				shape.Width = min(ToolWidth, 22 - tx);
				shape.Height = min(ToolHeight, 20 - ty);
				shape.image_xscale = 0; // This will set itself on the next frame
				shape.image_yscale = 0;
				
				ds_list_add(DrawQueue, shape.id);
				
				MousePrevGridLocation = [tx, ty];
			}
		}
	}
}
if (mouse_check_button_released(mb_left)) MousePrevGridLocation = [-1, -1];
