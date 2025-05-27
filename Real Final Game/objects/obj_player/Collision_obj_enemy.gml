/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DA64DD3
/// @DnDArgument : "code" "// Decrease Health$(13_10)$(13_10)// Example: Take 10 damage$(13_10)health -= 10;$(13_10)$(13_10)// Prevent health from going below zero$(13_10)if (health < 0) {$(13_10)    health = 0;$(13_10)    $(13_10)    // Optional: add death logic here$(13_10)    // instance_destroy(); or other game over code$(13_10)}$(13_10)"
// Decrease Health

// Example: Take 10 damage
health -= 10;

// Prevent health from going below zero
if (health < 0) {
    health = 0;
    
    // Optional: add death logic here
    // instance_destroy(); or other game over code
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B4CFD60
/// @DnDArgument : "var" "health"
if(health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2E914933
	/// @DnDParent : 4B4CFD60
	instance_destroy();
}