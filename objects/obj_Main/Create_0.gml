/// Main : Init

depth = -1000;
draw_set_font(font);
draw_set_colour(c_white);

FilePath = "none";



// Init Functions
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
	var _x = 1030;
	var _y = 172;
	var size = 48;
	var distance = 56;
	
	
	// Row 1
	var button = instance_create_depth(_x, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Eraser;
	button.Tooltip = "Eraser (E)";
	button.TooltipWidth = 140;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + distance, _y, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Picker;
	button.Tooltip = "Picker (W)";
	button.TooltipWidth = 145;
	button.TooltipHeight = 48;
	
	
	// Row 2
	var button = instance_create_depth(_x, _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Square;
	button.ImageBlend = c_black;
	button.Tooltip = "Square (A)";
	button.TooltipWidth = 150;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + distance, _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_HalfSquare;
	button.ImageBlend = c_black;
	button.Tooltip = "Half Square (S)";
	button.TooltipWidth = 195;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 2), _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_HalfTriangle;
	button.ImageBlend = c_black;
	button.Tooltip = "Triangle (D)";
	button.TooltipWidth = 160;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 3), _y + distance, 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Triangle;
	button.ImageBlend = c_black;
	button.Tooltip = "Slope (F)";
	button.TooltipWidth = 130;
	button.TooltipHeight = 48;
	
	
	// Row 3
	var button = instance_create_depth(_x, _y + (distance * 2), 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Circle;
	button.ImageBlend = c_black;
	button.Tooltip = "Circle (Z)";
	button.TooltipWidth = 140;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + distance, _y + (distance * 2), 0, obj_Button);
	button.set_size(size);
	button.Image = spr_Semicircle;
	button.ImageBlend = c_black;
	button.Tooltip = "Semicircle (X)";
	button.TooltipWidth = 180;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 2), _y + (distance * 2), 0, obj_Button);
	button.set_size(size);
	button.Image = spr_CircleQuarter;
	button.ImageBlend = c_black;
	button.Tooltip = "Quarter Circle (C)";
	button.TooltipWidth = 230;
	button.TooltipHeight = 48;
	
	var button = instance_create_depth(_x + (distance * 3), _y + (distance * 2), 0, obj_Button);
	button.set_size(size);
	button.Image = spr_CircleInvertedQuarter;
	button.ImageBlend = c_black;
	button.Tooltip = "Round Slope (V)";
	button.TooltipWidth = 210;
	button.TooltipHeight = 48;
}

function create_hsv_sliders()
{
	var _x = 20;
	var _y = 172;
	var hsize = 248;
	var vsize = 40;
	var distance = 60;
	
	var slider = instance_create_depth(_x, _y, 0, obj_Slider);
	slider.image_index = 0;
	slider.image_xscale = hsize / sprite_get_width(spr_HSV);
	slider.image_yscale = vsize / sprite_get_height(spr_HSV);
	
	var slider = instance_create_depth(_x, _y + distance, 0, obj_Slider);
	slider.image_index = 1;
	slider.image_xscale = hsize / sprite_get_width(spr_HSV);
	slider.image_yscale = vsize / sprite_get_height(spr_HSV);
	slider.Pointer = 1;
	
	var slider = instance_create_depth(_x, _y + (distance * 2), 0, obj_Slider);
	slider.image_index = 2;
	slider.image_xscale = hsize / sprite_get_width(spr_HSV);
	slider.image_yscale = vsize / sprite_get_height(spr_HSV);
	slider.Pointer = 1;
	
	var button = instance_create_depth(_x, _y + (distance * 3), 0, obj_Button);
	button.set_size(hsize);
	button.Image = spr_Square;
	button.Tooltip = "Colour";
	button.TooltipWidth = 110;
	button.TooltipHeight = 48;
}

create_file_buttons();
create_tool_buttons();
create_hsv_sliders();


// Functions
function save_to_file()
{
	if (FilePath == "none") var path = get_save_filename("|*.txt", "untitled");
	else var path = FilePath;
	
	if (path != "")
	{
		var file = file_text_open_write(path);
		
		// Save metadata
		file_text_write_string(file, "vat_file");
		file_text_writeln(file);
		file_text_write_real(file, ds_list_size(obj_Grid.DrawQueue));
		file_text_writeln(file);
		
		// Save shape data
		for (var i = 0; i < ds_list_size(obj_Grid.DrawQueue); i++)
		{
			var shape = obj_Grid.DrawQueue[| i];
			
			if instance_exists(shape)
			{
				var data = "";
				data += string(shape.x) + " " + string(shape.y) + " ";
				data += string(shape.sprite_index) + " " + string(shape.image_index) + " " + string(shape.image_blend) + " ";
				data += string(shape.Width) + " " + string(shape.Height);
				file_text_write_string(file, data);
				file_text_writeln(file);
			}
		}
		
		file_text_close(file);
		
		FilePath = path;
	}
}

function load_from_file()
{
	var path = get_open_filename("|*.txt", "");
	
	if (path != "")
	{
		var file = file_text_open_read(path);
		
		var check = file_text_read_string(file);
		if (check == "vat_file")
		{
			ds_list_clear(obj_Grid.DrawQueue);
			instance_destroy(obj_Shape);
			
			// Read metadata
			file_text_readln(file);
			var count = file_text_read_real(file);
			file_text_readln(file);
			
			for (var i = 0; i < count; i++)
			{
				// Read shape data
				var data = file_text_read_string(file);
				file_text_readln(file);
				
				// Split line into array
				data = string_split(data, " ");
				
				// Create shape
				var shape = instance_create_depth(real(data[0]), real(data[1]), 0, obj_Shape);
				shape.sprite_index = real(data[2]);
				shape.image_index = real(data[3]);
				shape.image_blend = real(data[4]);
				shape.Width = real(data[5]);
				shape.Height = real(data[6]);
				shape.image_xscale = 0; // This will set itself on the next frame
				shape.image_yscale = 0;
				
				ds_list_add(obj_Grid.DrawQueue, shape.id);
			}
			
			FilePath = path;
		}
		
		file_text_close(file);
	}
}


