
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