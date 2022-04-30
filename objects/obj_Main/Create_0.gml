/// Main : Init

depth = -1000;
draw_set_font(font);

ToolSelected = 0;



// Functions (these ones are just to help manage readability)
function create_file_buttons()
{
	var _x = 20;
	var _y = 16;
	var size = 48;
	var distance = 56;

	var button = instance_create_depth(_x, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_NewFile;
	button.Tooltip = "Create new image";
	button.TooltipWidth = 230;
	button.TooltipHeight = 48;

	var button = instance_create_depth(_x + distance, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_LoadFile;
	button.Tooltip = "Load image";
	button.TooltipWidth = 160;
	button.TooltipHeight = 48;

	var button = instance_create_depth(_x + (distance * 2), _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_SaveFile;
	button.Tooltip = "Save image";
	button.TooltipWidth = 160;
	button.TooltipHeight = 48;

	var button = instance_create_depth(_x + (distance * 3), _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_ExportFile;
	button.Tooltip = "Export as PNG";
	button.TooltipWidth = 190;
	button.TooltipHeight = 48;
}
function create_tool_buttons()
{
	var _x = 1048;
	var _y = 108;
	var size = 48;
	var distance = 56;
	
	
	// Row 1
	
	
	
	// Row 2
	var button = instance_create_depth(_x, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Square;
	button.ImageBlend = c_black;
	button.Tooltip = "Square";
	button.TooltipWidth = 110;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + distance, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_HalfSquare;
	button.ImageBlend = c_black;
	button.Tooltip = "Half Square";
	button.TooltipWidth = 160;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 2), _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_HalfTriangle;
	button.ImageBlend = c_black;
	button.Tooltip = "Triangle";
	button.TooltipWidth = 130;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 3), _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Triangle;
	button.ImageBlend = c_black;
	button.Tooltip = "Slope";
	button.TooltipWidth = 100;
	button.TooltipHeight = 48;
	
	
	// Row 3
	var button = instance_create_depth(_x, _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Circle;
	button.ImageBlend = c_black;
	button.Tooltip = "Circle";
	button.TooltipWidth = 100;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + distance, _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Semicircle;
	button.ImageBlend = c_black;
	button.Tooltip = "Semicircle";
	button.TooltipWidth = 150;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 2), _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_CircleQuarter;
	button.ImageBlend = c_black;
	button.Tooltip = "Quarter Circle";
	button.TooltipWidth = 190;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 3), _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_CircleInvertedQuarter;
	button.ImageBlend = c_black;
	button.Tooltip = "Round Slope";
	button.TooltipWidth = 170;
	button.TooltipHeight = 48;
}

create_file_buttons();
create_tool_buttons();
