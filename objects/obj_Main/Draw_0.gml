/// Main : Draw

// File name
draw_text_shadow(288, 30, "File Path:  " + FilePath, 2);

// Controls (below tool buttons)
var _x = 1030;
var _y = 348;
draw_text_shadow(_x, _y, "Rotate Shape      (Q)", 2);
draw_text_shadow(_x, _y + 32, "Scale Horizon.   (1)(3)", 2);
draw_text_shadow(_x, _y + 64, "Scale Vert.        (2)(4)", 2);



// Show tooltip
if (position_meeting(mouse_x, mouse_y, obj_Button))
{
	var button = instance_position(mouse_x, mouse_y, obj_Button);
	button.show_tooltip(mouse_x, mouse_y);
}
