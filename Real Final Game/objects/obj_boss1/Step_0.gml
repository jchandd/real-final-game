/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17CF2270
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
/// @DnDHash : 5EF37F27
/// @DnDArgument : "var" "health_"
if(health_ == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 69DAD346
	/// @DnDParent : 5EF37F27
	/// @DnDArgument : "imageind" "5"
	/// @DnDArgument : "spriteind" "spr_bossdth"
	/// @DnDSaveInfo : "spriteind" "spr_bossdth"
	sprite_index = spr_bossdth;
	image_index = 5;
}