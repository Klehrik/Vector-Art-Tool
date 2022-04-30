/// Button : Step

// Check for press
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	Pressed = 6;
	with (obj_Grid) reset_shape_modifiers();
	
	// Run button effect
	switch (Image)
	{
		// File stuff
		case spr_NewFile:
			obj_Main.FilePath = "none";
			obj_Grid.create_new_grid(22, 20);
			break;
				
		case spr_LoadFile:
			
			break;
				
		case spr_SaveFile:
			obj_Main.save_to_file();
			break;
			
			
		
		// Tool select
		case spr_Eraser:
			obj_Grid.Tool = spr_Eraser;
			break;
			
		case spr_Picker:
			obj_Grid.Tool = spr_Picker;
			break;
				
			
			
		// Shape select
		case spr_Square:
			obj_Grid.Tool = spr_Square;
			break;
				
		case spr_HalfSquare:
			obj_Grid.Tool = spr_HalfSquare;
			break;
				
		case spr_HalfTriangle:
			obj_Grid.Tool = spr_HalfTriangle;
			break;
				
		case spr_Triangle:
			obj_Grid.Tool = spr_Triangle;
			break;
				
		case spr_Circle:
			obj_Grid.Tool = spr_Circle;
			break;
				
		case spr_Semicircle:
			obj_Grid.Tool = spr_Semicircle;
			break;
				
		case spr_CircleQuarter:
			obj_Grid.Tool = spr_CircleQuarter;
			break;
				
		case spr_CircleInvertedQuarter:
			obj_Grid.Tool = spr_CircleInvertedQuarter;
			break;
	}
}
