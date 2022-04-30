/// Button : Draw

draw_self();

// this code is a sin but there's less than 22 hr left
var offset = 0;
if (Pressed > 0) offset = 16 * image_xscale; // Button is selected
var ratio = 448 / 512; // convert 512 px scale to 448 (to fit in the button frame)
draw_sprite_ext(Image, 0, x + 2 + offset, y + 2 + offset, image_xscale * ratio, image_yscale * ratio, 0, ImageBlend, 1);



// Change image
if (Pressed > 0)
{
	Pressed -= 1;
	image_index = 1;
}
else image_index = 0;
