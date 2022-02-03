classdef plotter
    methods(Static)
        function plot_scores(s)
            x = 1:1:5;
            our_scores = [s.acceleration_score, s.skidpad_score, s.autocross_score, ...
                s.endurance_score, s.total_score];
            max_scores = [100, 75, 125, 275, 575];
            figure
            plot(x, our_scores, x, max_scores, "--");
        end
        
        function plot_velocity(e, c, a)
            velocity = 0;
            time = 0;
            velocity_ar = [];
            acceleration = c.str_acc_s(velocity, e, c, a);
            while (acceleration > 1)
                %fprintf("%f\n", acceleration);
                velocity = velocity + acceleration;
                velocity_ar(end+1) = velocity;
                time = time + 1;
                acceleration = c.str_acc_s(velocity, e, c, a);
            end
            x = 1:1:time;
            figure
            plot(x, velocity_ar);
            xlabel("Time (seconds)");
            ylabel("Velocity (feet per second)");
            grid on
            title 'Straight Line Acceleration'
        end
    end
end