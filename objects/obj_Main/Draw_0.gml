/// Main : Draw

// File name
draw_text_shadow(288, 30, "File Path:  " + FilePath, 2);

// Controls (below tool buttons)
draw_text_shadow(1032, 284, "Rotate Shape      (Q)", 2);
draw_text_shadow(1032, 316, "Scale Horizon.   (1)(3)", 2);
draw_text_shadow(1032, 348, "Scale Vert.        (2)(4)", 2);



// Show tooltip
if (position_meeting(mouse_x, mouse_y, obj_Button))
{
	var button = instance_position(mouse_x, mouse_y, obj_Button);
	button.show_tooltip(mouse_x, mouse_y);
}
