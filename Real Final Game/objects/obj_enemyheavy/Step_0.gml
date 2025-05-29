var target = instance_find(obj_player, 0);
var enemy_speed = 2;  // default speed
var dir = 0;          // initialize dir

if (target != noone && variable_instance_exists(target, "health") && target.health > 0) {
    dir = point_direction(x, y, target.x, target.y);
} else {
    enemy_speed = 0;  // stop moving if no player or player dead
}

x += lengthdir_x(enemy_speed, dir);
y += lengthdir_y(enemy_speed, dir);

