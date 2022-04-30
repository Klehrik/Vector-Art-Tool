/// Grid : Step

// Rotate selected tool (if it's a shape)
if (keyboard_check_pressed(ord("Q"))) ToolRotate -= 1;
else if (keyboard_check_pressed(ord("E"))) ToolRotate += 1;
if (ToolRotate < 0) ToolRotate = 3;
else if (ToolRotate > 3) ToolRotate = 0;

// Use tool
if (mouse_check_button(mb_left))
{
	// Check if a tool is selected and within the canvas
	if (Tool != noone and point_in_rectangle(mouse_x, mouse_y, 288, 80, 992, 720))
	{
		if (Tool == spr_Eraser)
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
