/// Main : Init

depth = -1000;

draw_set_font(font);



function create_buttons()
{
	// Create file buttons
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

create_buttons();
