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
move_and_collide(move_x, move_y, obj_ground);

// ######################## OUTSIDE ROOM ########################
if (x < -20 || x > room_width + 20 || y > room_height + 20 || y < -200) {
		room_restart();  // Restart the room if outside the boundaries we set	
}


// Shooting mechanic (shoot while mouse button is held down)
if (mouse_check_button(mb_left)) {
    // Create the bullet at the player's position
    var bullet = instance_create_layer(x, y, layer, obj_bullet);
    
    // Set the bullet's direction towards the mouse
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
    
    // Set bullet speed (ensure this is either done in the bullet's Create Event or

}