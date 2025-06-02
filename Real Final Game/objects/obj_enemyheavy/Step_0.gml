// Step Event for obj_enemy

// Move the enemy horizontally based on its speed and direction
x += hspeed * direction; // Moves the enemy along the X-axis

// Check if the enemy goes beyond the right side of the room
if (x > room_width) {
    direction = -1; // Reverse direction (move left)
} 
// Check if the enemy goes beyond the left side of the room
else if (x < 0) {
    direction = 1; // Reverse direction (move right)
}

if health_ <= 0 {
	instance_destroy();
}
// Check if enemy is outside room boundaries
if (x < 0) {
    x = 0;
    // Pick a random new direction going right/down/up/left (but not outside)
    var angle = irandom_range(45, 135); // roughly pointing right and down
    hspeed = lengthdir_x(abs(hspeed), angle);
    vspeed = lengthdir_y(abs(vspeed), angle);
}
else if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
    var angle = irandom_range(225, 315); // roughly pointing left and up
    hspeed = lengthdir_x(abs(hspeed), angle);
    vspeed = lengthdir_y(abs(vspeed), angle);
}
