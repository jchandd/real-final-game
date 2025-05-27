// ######################## MOVEMENT VARIABLES ########################
move_speed = 2.5;         // Left/Right speed
jump_speed = -15;         // Upward jump speed
gravity_force = 0.5;      // Gravity strength
max_fall_speed = 10;      // Max downward speed
move_x = 0;				  // Horizontal movement
move_y = 0;			      // Vertical movement

// WASD
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// ######################## STATE VARIABLES ########################
is_grounded = false;      // On ground?
is_climbing = false;      // On ladder?
climb_speed = 2.5;        // Climbing speed

// ######################## OBJECT REFERENCES ########################
ground_object = obj_ground;   // Replace with your ground object's name
ladder_object = obj_ladder;   // Replace with your ladder object's name


// bullet cooldown
bullet_cooldown_ = room_speed/6;
alarm[0] = bullet_cooldown_;
dir = 0;

//Health
// Maximum health
max_health = 1000;

// Current health
health = max_health;

