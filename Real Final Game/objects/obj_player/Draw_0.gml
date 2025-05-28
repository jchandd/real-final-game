// Draw the default sprite first
draw_self();

// Define health bar size
var bar_width = 50;
var bar_height = 6;

// Calculate health percentage (0 to 1)
var health_percent = health / max_health;

// Position the health bar slightly above the character
var bar_x = x - bar_width / 2;
var bar_y = y - sprite_height / 1 - 5;

// Draw background (gray)
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw health amount (green)
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * health_percent), bar_y + bar_height, false);

// Reset draw color
draw_set_color(c_white);



