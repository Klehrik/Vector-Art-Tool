/// Main : Init

depth = -1000;

draw_set_font(font);

// Create file buttons
var _x = 24;
var _y = 16;
var size = 48;
var distance = 56;
var button = instance_create_depth(_x, _y, 0, obj_Button);
button.set_size(size);
button.Image = spr_NewFile;
var button = instance_create_depth(_x + distance, _y, 0, obj_Button);
button.set_size(size);
button.Image = spr_LoadFile;
var button = instance_create_depth(_x + (distance * 2), _y, 0, obj_Button);
button.set_size(size);
button.Image = spr_SaveFile;
