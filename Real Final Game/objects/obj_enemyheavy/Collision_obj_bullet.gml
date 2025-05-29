health_ -= 1;
instance_destroy(other);

var dir = other.direction;
speed_ = lengthdir_x(8, dir);
speed_ = lengthdir_y(8, dir);


