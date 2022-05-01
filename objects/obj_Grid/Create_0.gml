/// Grid : Init

Tool = spr_Square;
ToolColour = c_white;
ToolColourHSV = [0, 0, 0];
ToolWidth = 1; // in tiles of 32
ToolHeight = 1; // in tiles of 32
ToolRotate = 0;

MousePrevGridLocation = [-1, -1]; // This prevents placing shapes in the same tile every frame

Grid = noone;
GridWidth = -1;
GridHeight = -1;

ExportFile = false;

ShapeDepth = 11990; // instances created on the same depth will draw under others which is not desired



// Functions
//function create_new_grid(width, height)
//{
//	if (Grid != noone) ds_grid_destroy(Grid);
//	Grid = ds_grid_create(width, height);
//	GridWidth = width;
//	GridHeight = height;
//}

function reset_shape_modifiers()
{
	ToolWidth = 1; // in tiles of 32
	ToolHeight = 1; // in tiles of 32
	ToolRotate = 0;
}

//create_new_grid(22, 20);
