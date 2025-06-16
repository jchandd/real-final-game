/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DA64DD3
/// @DnDArgument : "code" "// Decrease Health by 10$(13_10)health -= 10;$(13_10)$(13_10)// Prevent health from going below zero$(13_10)if (health < 0) {$(13_10)    health = 0;$(13_10)    $(13_10)    // Teleport player to the start of the level$(13_10)    x = startX;  // Assuming startX is the starting x-coordinate$(13_10)    y = startY;  // Assuming startY is the starting y-coordinate$(13_10)    $(13_10)    $(13_10)}"
// Decrease Health by 10
health -= 10;

// Prevent health from going below zero
if (health < 0) {
    health = 0;
    
    // Teleport player to the start of the level
    x = startX;  // Assuming startX is the starting x-coordinate
    y = startY;  // Assuming startY is the starting y-coordinate
    
    
}