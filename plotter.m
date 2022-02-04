classdef plotter
    methods(Static)
        function plot_scores(s)
            x = 1:1:5;
            our_scores = [s.acceleration_score, s.skidpad_score, s.autocross_score, ...
                s.endurance_score, s.total_score];
            max_scores = [100, 75, 125, 275, 575];
            figure
            plot(x, our_scores, x, max_scores, "--");
            legend("Expected Score", "Maximum Score");
            xlabel("Event Number");
            ylabel("Score");
            title 'Expected Score vs Maximum Score'
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
        
        function velocity_comparision(e1, c1, a1, e2, c2, a2, e3, c3, a3)
            velocity1 = 0;
            velocity2 = 0;
            velocity3 = 0;
            time = 1;
            velocity_ar1 = [];
            velocity_ar2 = [];
            velocity_ar3 = [];
            acceleration1 = c1.str_acc_s(velocity1, e1, c1, a1);
            acceleration2 = c2.str_acc_s(velocity1, e2, c2, a2);
            acceleration3 = c3.str_acc_s(velocity3, e3, c3, a3);

            while (acceleration1 > 1 && acceleration2 > 1 && acceleration3 > 1 && time < 25)
                %fprintf("%f\n", acceleration);
                velocity1 = velocity1 + acceleration1;
                velocity_ar1(end+1) = velocity1;
                velocity2 = velocity2 + acceleration2;
                velocity_ar2(end+1) = velocity2;
                velocity3 = velocity3 + acceleration3;
                velocity_ar3(end+1) = velocity3;
                time = time + 1;
                acceleration1 = c1.str_acc_s(velocity1, e1, c1, a1);
                acceleration2 = c2.str_acc_s(velocity1, e2, c2, a2);
                acceleration3 = c3.str_acc_s(velocity3, e3, c3, a3);
            end
            fprintf("%f\n", velocity_ar1(time-1));
            x = 1:1:time-1;
            figure
            plot(x, velocity_ar1, "g", x, velocity_ar2, "b", x, velocity_ar3, "r");
            % Update this everytime you want to graph something
            legend('Location','bestoutside')
            legend("22 HP", "25 HP", "28 HP");
            xlabel("Time (seconds)");
            ylabel("Velocity (feet per second)");
            grid on
            title 'Affect of Horse Power on Acceleration'
        end
    end
end