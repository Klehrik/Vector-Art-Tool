/// Grid : Init

Grid = noone;
GridWidth = -1;
GridHeight = -1;



// Functions
function create_new_grid(width, height)
{
	if (Grid != noone) ds_grid_destroy(Grid);
	Grid = ds_grid_create(width, height);
	GridWidth = width;
	GridHeight = height;
}

create_new_grid(22, 20);
