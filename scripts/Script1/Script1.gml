/// Misc

function draw_text_shadow(_x, _y, text, shadow_offset)
{
	draw_text_colour(_x + shadow_offset, _y + shadow_offset, text, c_black, c_black, c_black, c_black, 1);
	draw_text(_x, _y, text);
}