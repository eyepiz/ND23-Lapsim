function time = skidpad(radius, c)
    distance = 2*pi*radius*4;
    angle = c.turn_angle(c, radius);
    skidpad_velocity = sqrt(angle-57.3*c.wheel_base);
    time = distance/skidpad_velocity;
end