// ######################## INPUT ########################
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed
var jump_pressed = keyboard_check_pressed(vk_space); // var makes it a local variable just for this page


// ######################## COLLISION CHECKS ########################
// Check if standing on the ground
is_grounded = place_meeting(x, y+2, obj_ground);

// Check if touching a ladder
is_climbing = place_meeting(x, y, obj_ladder);


// ######################## MOVEMENT ########################
// Climbing
if (is_climbing) {
		move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
		move_y *= climb_speed;
}
else {
// Gravity & Jumping
	if (is_grounded && jump_pressed) {
		move_y = jump_speed;
	}
// Falling due to Gravity
	else if (move_y < max_fall_speed) { // Keep a reasonable fall speed
		move_y += gravity_force; // Gravity pulls down!
	}
}

// ######################## MOVE THE PLAYER ########################
move_and_collide(move_x, move_y, obj_ground, obj_ground2)

// ######################## OUTSIDE ROOM ########################
if (x < -20 || x > room_width + 20 || y > room_height + 20 || y < -200) {
		room_restart();  // Restart the room if outside the boundaries we set	
}
if (health <= 0) {
    room_goto(level_gameover);
}


