// Decrease Health

// Example: Take 10 damage
health -= 10;

// Prevent health from going below zero
if (health < 0) {
    health = 0;
    
    // Optional: add death logic here
    // instance_destroy(); or other game over code
}
