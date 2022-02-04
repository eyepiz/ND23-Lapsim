function time = skidpad(radius, c, t)
    distance = pi*radius;
    angle = c.turn_angle(c, radius);
    skidpad_velocity = c.find_turn_velocity(c, angle, radius, t);
    time = distance/skidpad_velocity;
end