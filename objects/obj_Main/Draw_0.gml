/// Main : Draw

// File name
var _x = 288;
var _y = 30;
var shadow_offset = 2;
var text = "File Path:  " + FilePath;
draw_text_colour(_x + shadow_offset, _y + shadow_offset, text, c_black, c_black, c_black, c_black, 1);
draw_text(_x, _y, text);



// Show tooltip
if (position_meeting(mouse_x, mouse_y, obj_Button))
{
	var button = instance_position(mouse_x, mouse_y, obj_Button);
	button.show_tooltip(mouse_x, mouse_y);
}
