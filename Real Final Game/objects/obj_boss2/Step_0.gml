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