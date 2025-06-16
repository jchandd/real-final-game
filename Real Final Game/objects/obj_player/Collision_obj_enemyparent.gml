// Knockback strength (adjust as needed)
var knockback_strength = 80;

// Calculate direction from enemy to player
var dx = x - other.x;
var dy = y - other.y;

// Normalize direction
var dist = point_distance(other.x, other.y, x, y);
if (dist != 0) {
    dx /= dist;
    dy /= dist;
}

// Apply knockback movement
x += dx * knockback_strength;
y += dy * knockback_strength;
