/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71EE9535
/// @DnDArgument : "code" "// Decrease shoot timer every frame$(13_10)shoot_timer -= 1;$(13_10)$(13_10)// If timer hits zero or less, shoot a bullet toward the player$(13_10)if (shoot_timer <= 0) {$(13_10)    shoot_timer = shoot_cooldown; // reset timer$(13_10)    $(13_10)    // Create bullet instance at enemy position, in "Bullets" layer$(13_10)    var bullet = instance_create_layer(x, y, "Bullets", obj_boss2blt);$(13_10)    $(13_10)    // Set bullet direction toward player$(13_10)    bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)    $(13_10)    // Set bullet speed$(13_10)    bullet.speed = 8;$(13_10)}$(13_10)$(13_10)$(13_10)    if (pause_timer <= 0) {$(13_10)        state = "move";$(13_10)    }$(13_10)if health_ <= 0 {$(13_10)	instance_destroy();}"
// Decrease shoot timer every frame
shoot_timer -= 1;

// If timer hits zero or less, shoot a bullet toward the player
if (shoot_timer <= 0) {
    shoot_timer = shoot_cooldown; // reset timer
    
    // Create bullet instance at enemy position, in "Bullets" layer
    var bullet = instance_create_layer(x, y, "Bullets", obj_boss2blt);
    
    // Set bullet direction toward player
    bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
    
    // Set bullet speed
    bullet.speed = 8;
}


    if (pause_timer <= 0) {
        state = "move";
    }
if health_ <= 0 {
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DC0DD95
/// @DnDArgument : "var" "health_"
if(health_ == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0CA89843
	/// @DnDParent : 0DC0DD95
	/// @DnDArgument : "soundid" "snd_alien2"
	/// @DnDSaveInfo : "soundid" "snd_alien2"
	audio_play_sound(snd_alien2, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 79ACDF69
	/// @DnDParent : 0DC0DD95
	room_goto_next();
}