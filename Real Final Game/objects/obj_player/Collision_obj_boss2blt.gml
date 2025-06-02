/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 016A4DD0
/// @DnDArgument : "code" "// Decrease Health$(13_10)$(13_10)// Example: Take 100 damage$(13_10)health -= 250;$(13_10)$(13_10)// Prevent health from going below zero$(13_10)if (health < 0) {$(13_10)    health = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
// Decrease Health

// Example: Take 100 damage
health -= 250;

// Prevent health from going below zero
if (health < 0) {
    health = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B4BEAD9
/// @DnDArgument : "var" "health"
if(health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0128E426
	/// @DnDParent : 5B4BEAD9
	instance_destroy();
}