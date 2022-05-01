/// Misc

function draw_text_shadow(_x, _y, text, shadow_offset)
{
	draw_text_colour(_x + shadow_offset, _y + shadow_offset, text, c_black, c_black, c_black, c_black, 1);
	draw_text(_x, _y, text);
}

function string_split(str, value)
{
	var array = [];
	var word = "";
	for (var i = 1; i <= string_length(str); i++)
	{
		var current = string_copy(str, i, 1);
		if (current != value) word += current;
		else
		{
			array[array_length(array)] = word;
			word = "";
		}
	}
	array[array_length(array)] = word;
	return array;
}
