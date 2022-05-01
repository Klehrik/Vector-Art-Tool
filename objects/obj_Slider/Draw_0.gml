/// Slider : Draw

// Saturation and Value bar modifiers
if (image_index == 1) draw_sprite_ext(spr_HSV, 3, x, y, image_xscale, image_yscale, 0, obj_Grid.ToolColour, 1);
else if (image_index == 2) image_blend = obj_Grid.ToolColour;

draw_self();

// Pointer
draw_sprite_ext(spr_SliderPointer, 0, lerp(x, x + sprite_width, Pointer), y, image_xscale, image_yscale, 0, c_white, 1);
