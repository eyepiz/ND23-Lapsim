function time = acceleration(track_length, c, e)
    length_left = track_length;
    time = 0;
    velocity = 0;
    while length_left > 0
        acceleration = c.str_acc_s(velocity, e, c);
        velocity = velocity + acceleration;
        if velocity < length_left
           length_left = length_left - velocity;
           time = time+1;
        else
            time = time + (length_left/velocity);
            length_left = 0;
        end
    end
end