/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 667D5ED0
/// @DnDArgument : "code" "// Create Event for obj_enemy$(13_10)health_ = 5;$(13_10)speed_ = [0, 0];$(13_10)$(13_10)$(13_10)$(13_10)"
// Create Event for obj_enemy
health_ = 5;
speed_ = [0, 0];

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 40DC9E07
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 57158A9C
/// @DnDArgument : "speed" "3"
speed = 3;