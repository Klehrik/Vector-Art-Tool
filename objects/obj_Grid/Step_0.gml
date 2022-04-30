/// Grid : Step

// Rotate selected tool (if it's a shape)
if (keyboard_check_pressed(ord("Q"))) ToolRotate -= 1;
else if (keyboard_check_pressed(ord("E"))) ToolRotate += 1;
if (ToolRotate < 0) ToolRotate = 3;
else if (ToolRotate > 3) ToolRotate = 0;


