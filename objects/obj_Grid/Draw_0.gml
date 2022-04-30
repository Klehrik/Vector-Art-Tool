/// Grid : Draw

// Draw border
draw_rectangle(288, 80, 992, 720, 1);

// Draw grid
if (Grid != noone)
{
	draw_set_alpha(0.5);
	for (var _x = 288; _x < 992; _x += 704 / GridWidth) draw_line(_x, 80, _x, 720);
	for (var _y = 80; _y < 720; _y += 640 / GridHeight) draw_line(288, _y, 992, _y);
	draw_set_alpha(1);
}
