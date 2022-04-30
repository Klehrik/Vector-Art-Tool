/// Grid : Init

Tool = noone;
ToolColour = c_white;
ToolWidth = 1; // in tiles of 32
ToolHeight = 1; // in tiles of 32
ToolRotate = 0;

MousePrevGridLocation = [-1, -1]; // This prevents placing shapes in the same tile every frame

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
