function time = skidpad(radius, c, t)
    distance = 2*pi*radius*4;
    angle = c.turn_angle(c, radius);
    cornering_coef = 0.2;
    %Fy = lateral_force(c, radius, velocity);
    %stiffness = Fy * cornering_coef;
    stiffness = 0.16;
    skidpad_velocity = sqrt((angle-(57.3*c.wheel_base/radius)...
        /(t.front_load*c.mass/stiffness - t.rear_load*c.mass/stiffness))*(radius*32.2));
    time = distance/skidpad_velocity;
end