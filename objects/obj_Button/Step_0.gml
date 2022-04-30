/// Button : Step

// Check for press
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id)) Pressed = true;
else if (mouse_check_button_released(mb_left))
{
	if (Pressed == true and position_meeting(mouse_x, mouse_y, id))
	{
		
		// Run button effect
		switch (sprite_index)
		{
			case spr_NewFile:
				obj_Grid.create_new_grid();
				break;
				
				
			case spr_LoadFile:
				
				break;
				
				
			case spr_SaveFile:
				
				break;
		}
		
	}
	Pressed = false;
}
