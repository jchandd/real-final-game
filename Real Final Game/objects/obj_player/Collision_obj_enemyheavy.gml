/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E15D085
/// @DnDArgument : "code" "// Decrease Health$(13_10)$(13_10)// Example: Take 10 damage$(13_10)health -= 10;$(13_10)$(13_10)// Prevent health from going below zero$(13_10)if (health < 0) {$(13_10)    health = 0;$(13_10)}$(13_10)"
// Decrease Health

// Example: Take 10 damage
health -= 10;

// Prevent health from going below zero
if (health < 0) {
    health = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BB3D7E1
/// @DnDArgument : "var" "health"
if(health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0F348AD5
	/// @DnDParent : 2BB3D7E1
	instance_destroy();
}