/// Button : Draw

draw_self();

var offset = 0;
if (image_index == 1) offset = 16 * image_xscale; // Button is selected
draw_sprite_ext(Image, 0, x + offset, y + offset, image_xscale, image_yscale, 0, c_white, 1);



// Change image
if (Pressed == true and position_meeting(mouse_x, mouse_y, id)) image_index = 1;
else image_index = 0;
