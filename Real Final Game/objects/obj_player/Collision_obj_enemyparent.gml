/// scr_knockback(source_x, source_y, knockback_distance)
// Knockback the calling instance away from (source_x, source_y) by knockback_distance pixels.

var source_x = argument0;
var source_y = argument1;
var knockback_distance = argument2;

// Calculate direction vector from source to this instance
var dx = x - source_x;
var dy = y - source_y;

// Calculate distance between source and this instance
var dist = point_distance(x, y, source_x, source_y);

// Normalize and apply knockback if distance not zero
if (dist != 0) {
    dx /= dist;
    dy /= dist;

    x += dx * knockback_distance;
    y += dy * knockback_distance;
}