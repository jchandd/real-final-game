/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5627BBC1
/// @DnDArgument : "code" "$(13_10)// Step event$(13_10)if (state == "move") {$(13_10)    var dir = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)    x += lengthdir_x(move_speed, dir);$(13_10)    y += lengthdir_y(move_speed, dir);$(13_10)$(13_10)    // After reaching close enough, pause and shoot$(13_10)    if (point_distance(x, y, obj_player.x, obj_player.y) < 500) {$(13_10)        state = "pause";$(13_10)        pause_timer = pause_time;$(13_10)        shoot_timer = 0;$(13_10)    }$(13_10)}$(13_10)else if (state == "pause") {$(13_10)    pause_timer -= 1;$(13_10)    shoot_timer -= 1;$(13_10)$(13_10)    if (shoot_timer <= 0) {$(13_10)        shoot_timer = shoot_cooldown;$(13_10)        // Create bullet aimed at player$(13_10)        var bullet = instance_create_layer(x, y, "Bullets", obj_bossblt);$(13_10)        bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)        bullet.speed = 6;$(13_10)    }$(13_10)$(13_10)    if (pause_timer <= 0) {$(13_10)        state = "move";$(13_10)    }$(13_10)}$(13_10)if health_ <= 0 {$(13_10)	instance_destroy();$(13_10)}"

// Step event
if (state == "move") {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);

    // After reaching close enough, pause and shoot
    if (point_distance(x, y, obj_player.x, obj_player.y) < 500) {
        state = "pause";
        pause_timer = pause_time;
        shoot_timer = 0;
    }
}
else if (state == "pause") {
    pause_timer -= 1;
    shoot_timer -= 1;

    if (shoot_timer <= 0) {
        shoot_timer = shoot_cooldown;
        // Create bullet aimed at player
        var bullet = instance_create_layer(x, y, "Bullets", obj_bossblt);
        bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
        bullet.speed = 6;
    }

    if (pause_timer <= 0) {
        state = "move";
    }
}
if health_ <= 0 {
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F6E8F1C
/// @DnDArgument : "var" "health_"
if(health_ == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6E69B084
	/// @DnDParent : 4F6E8F1C
	/// @DnDArgument : "soundid" "snd_alien1"
	/// @DnDSaveInfo : "soundid" "snd_alien1"
	audio_play_sound(snd_alien1, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1B91FF70
	/// @DnDParent : 4F6E8F1C
	room_goto_next();
}