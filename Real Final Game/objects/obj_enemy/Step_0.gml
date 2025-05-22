/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D106642
/// @DnDArgument : "code" "// Step Event for obj_enemy$(13_10)$(13_10)// Move the enemy horizontally based on its speed and direction$(13_10)x += hspeed * direction; // Moves the enemy along the X-axis$(13_10)$(13_10)// Check if the enemy goes beyond the right side of the room$(13_10)if (x > room_width) {$(13_10)    direction = -1; // Reverse direction (move left)$(13_10)} $(13_10)// Check if the enemy goes beyond the left side of the room$(13_10)else if (x < 0) {$(13_10)    direction = 1; // Reverse direction (move right)$(13_10)}$(13_10)"
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