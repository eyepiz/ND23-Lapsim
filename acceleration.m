function [time, velocity_arr] = acceleration(track_length, c, e, a)
    length_left = track_length;
    time = 0;
    time_step = 0.001;
    velocity = 0;
    velocity_arr = [];
    while length_left > 0
        acceleration = c.str_acc_s(velocity, e, c, a);
        velocity = velocity + acceleration*time_step;
        velocity_arr(end+1) = velocity;
        if velocity*time_step < length_left
           length_left = length_left - velocity*time_step;
           time = time+time_step;
        else
            time = time + (length_left/velocity*time_step);
            length_left = 0;
        end
    end
end