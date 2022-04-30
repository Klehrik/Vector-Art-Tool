/// Grid : Step

// Select tool (hotkeys)
if (keyboard_check_pressed(ord("E"))) { Tool = spr_Eraser; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("R"))) { Tool = spr_Picker; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("A"))) { Tool = spr_Square; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("S"))) { Tool = spr_HalfSquare; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("D"))) { Tool = spr_HalfTriangle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("F"))) { Tool = spr_Triangle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("Z"))) { Tool = spr_Circle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("X"))) { Tool = spr_Semicircle; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("C"))) { Tool = spr_CircleQuarter; reset_shape_modifiers(); }
else if (keyboard_check_pressed(ord("V"))) { Tool = spr_CircleInvertedQuarter; reset_shape_modifiers(); }


// Rotate shape tool
if (keyboard_check_pressed(ord("Q"))) ToolRotate -= 1;
else if (keyboard_check_pressed(ord("W"))) ToolRotate += 1;
if (ToolRotate < 0) ToolRotate = 3;
else if (ToolRotate > 3) ToolRotate = 0;


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
			if (shape != noone) instance_destroy(shape);
		}
		else if (Tool == spr_Picker)
		{
			
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
				var size = 32;
				var shape = instance_create_depth(tx * 32 + 288, ty * 32 + 80, 0, obj_Shape);
				shape.sprite_index = Tool;
				shape.image_index = ToolRotate;
				shape.image_blend = ToolColour;
				shape.Width = ToolWidth;
				shape.Height = ToolHeight;
				shape.image_xscale = 0; // This will set itself on the next frame
				shape.image_yscale = 0;
			
				MousePrevGridLocation = [tx, ty];
			}
		}
	}
}
if (mouse_check_button_released(mb_left)) MousePrevGridLocation = [-1, -1];

show_debug_message(instance_count);
