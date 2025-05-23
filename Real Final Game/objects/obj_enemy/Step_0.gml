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